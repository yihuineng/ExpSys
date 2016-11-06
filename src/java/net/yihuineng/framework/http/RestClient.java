package net.yihuineng.framework.http;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.params.HttpMethodParams;

import com.jfinal.log.Logger;

import net.yihuineng.framework.kit.StrKit;

public class RestClient {

	private final static Logger log = Logger.getLogger(RestClient.class);

	public final static String METHOD_GET = "GET";
	public final static String METHOD_PUT = "PUT";
	public final static String METHOD_DELETE = "DELETE";
	public final static String METHOD_POST = "POST";

	public static RestClientResponse get(String serviceUrl, Map<String, String> params) {
		return get(serviceUrl, params, null);
	}

	public static RestClientResponse put(String serviceUrl, Map<String, String> params) {
		return put(serviceUrl, params, null);
	}

	public static RestClientResponse delete(String serviceUrl, Map<String, String> params) {
		return delete(serviceUrl, params, null);
	}

	public static RestClientResponse post(String serviceUrl, Map<String, String> params) {
		return post(serviceUrl, params, null);
	}

	public static RestClientResponse get(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty) {
		return rest(serviceUrl, METHOD_GET, params, headerProperty, "utf-8");
	}

	public static RestClientResponse put(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty) {
		return rest(serviceUrl, METHOD_PUT, params, headerProperty, "utf-8");
	}

	public static RestClientResponse delete(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty) {
		return rest(serviceUrl, METHOD_DELETE, params, headerProperty, "utf-8");
	}

	public static RestClientResponse post(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty) {
		return rest(serviceUrl, METHOD_POST, params, headerProperty, "utf-8");
	}
	
	public static RestClientResponse get(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty, String charsetName) {
		return rest(serviceUrl, METHOD_GET, params, headerProperty, charsetName);
	}

	public static RestClientResponse put(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty, String charsetName) {
		return rest(serviceUrl, METHOD_PUT, params, headerProperty, charsetName);
	}

	public static RestClientResponse delete(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty, String charsetName) {
		return rest(serviceUrl, METHOD_DELETE, params, headerProperty, charsetName);
	}

	public static RestClientResponse post(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty, String charsetName) {
		return rest(serviceUrl, METHOD_POST, params, headerProperty, charsetName);
	}

	private static RestClientResponse rest(String serviceUrl, String restMethod, Map<String, String> params, Map<String, String> headerProperty, String charsetName) {
		// 解决标准Delete协助不支持待请求参数的问题
		if (METHOD_DELETE.equals(restMethod) && params!=null) {
			return deleteWithParameters(serviceUrl, params, headerProperty);
		}
		
		RestClientResponse result = new RestClientResponse();

		// 将参数拼接成url形式
		StringBuffer sbParams = new StringBuffer();
		if (params != null) {
			String[] ks = params.keySet().toArray(new String[]{});
			for (int i = 0; i < ks.length; i++) {
				if (sbParams.length() > 0) {
					sbParams.append("&");
				}
				try {
					sbParams.append(URLEncoder.encode(ks[i], charsetName) + "=" + URLEncoder.encode(params.get(ks[i]), charsetName));
				} catch (UnsupportedEncodingException e) {
					log.error("调用Rest服务参数编码时有错：" + ks[i] + "=" + params.get(ks[i]), e);
				}
			}
		}
		String parameter = sbParams.toString();

		try {
			if (METHOD_GET.equals(restMethod)){
				serviceUrl += (serviceUrl.indexOf("?") < 0 ? "?" : "&") + parameter;
			}
			
			URL url = new URL(serviceUrl);
			HttpURLConnection hc = (HttpURLConnection) url.openConnection();
			hc.setRequestMethod(restMethod);

			if (METHOD_PUT.equals(restMethod) || METHOD_POST.equals(restMethod)) {
				hc.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			}
			
			// 设置请求头参数
			if (headerProperty != null) {
				Object[] ks = headerProperty.keySet().toArray();
				for (int i = 0; i < ks.length; i++) {
					hc.setRequestProperty(ks[i].toString(), headerProperty.get(ks[i]));
				}
			}

			if (StrKit.isNotEmpty(parameter)) {
				if (METHOD_PUT.equals(restMethod) || METHOD_POST.equals(restMethod)) {
					// 设置DoOutput为真后，才能通过getOutputStream获取到OutputStream，因为Get参数是跟着地址后的，所以不用设置。
					hc.setDoOutput(true);
					OutputStream os = hc.getOutputStream();
					os.write(parameter.getBytes(charsetName));
					os.close();
				}
			}

			result.setResponseInfo(hc.getResponseCode(), hc.getResponseMessage());

			StringBuffer sb = new StringBuffer();
			InputStream in = hc.getInputStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(in, charsetName));
			for (String s = null; (s = br.readLine()) != null;) {
				sb.append(s);
			}
			br.close();
			result.setResponseBody(sb.toString());

		} catch (Exception e) {
			log.error("调用Rest服务出错：" + serviceUrl, e);
			result.setResponseInfo(-1, e.getMessage());
		}

		return result;
	}

	private static RestClientResponse deleteWithParameters(String serviceUrl, Map<String, String> params, Map<String, String> headerProperty) {
		RestClientResponse result = new RestClientResponse();

		// 构造HttpClient的实例
		HttpClient httpClient = new HttpClient();
		// 创建GET方法的实例
		RestClientDeleteMethod deleteMethod = new RestClientDeleteMethod(serviceUrl);
		// 使用系统提供的默认的恢复策略
		deleteMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());

		// 设置请求头参数
		if (headerProperty != null) {
			Object[] ks = headerProperty.keySet().toArray();
			for (int i = 0; i < ks.length; i++) {
				deleteMethod.setRequestHeader(ks[i].toString(), headerProperty.get(ks[i]));
			}
		}

		// 将表单的值放入postMethod中
		if (params != null) {
			NameValuePair[] data = new NameValuePair[params.size()];
			Object[] ks = params.keySet().toArray();
			for (int i = 0; i < ks.length; i++) {
				data[i] = new NameValuePair(ks[i].toString(), params.get(ks[i]));
			}
			deleteMethod.setRequestBody(data);
		}

		try {
			// 执行getMethod
			httpClient.executeMethod(deleteMethod);
			result.setResponseInfo(deleteMethod.getStatusCode(), deleteMethod.getStatusText());

			// 读取内容
			byte[] responseBody = deleteMethod.getResponseBody();
			// 处理内容
			result.setResponseBody(new String(responseBody, "UTF-8"));
		} catch (Exception e) {
			log.error("调用Rest服务出错：" + serviceUrl, e);
			result.setResponseInfo(-1, e.getMessage());
		} finally {
			// 释放连接
			deleteMethod.releaseConnection();
		}
		return result;
	}

}
