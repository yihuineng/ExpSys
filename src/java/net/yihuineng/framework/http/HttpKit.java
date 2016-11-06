package net.yihuineng.framework.http;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import org.apache.commons.codec.net.URLCodec;

import com.jfinal.log.Logger;

import net.yihuineng.framework.kit.StrKit;

/**
 * 多文件+多参数上传
 * 
 * @author chenfzh
 */
public class HttpKit {
	
	private final static Logger log = Logger.getLogger(HttpKit.class);

	public static String getString(String servletUrl) {
		return getString(servletUrl, null);
	}

	public static String getString(String servletUrl, Map<String, String> params) {
		StringBuffer sbUrl = new StringBuffer(servletUrl);
		if (params != null) {
			Object[] ks = params.keySet().toArray();
			for (int i = 0; i < ks.length; i++) {
				sbUrl.append(sbUrl.indexOf("?") < 0 ? "?" : "&");
				sbUrl.append(ks[i] + "=" + params.get(ks[i]));
			}
		}
		try {
			StringBuffer sb = new StringBuffer();
			URL url = new URL(sbUrl.toString());
			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			for (String s = null; (s = br.readLine()) != null;) {
				if (sb.length() > 0) {
					sb.append("\r\n");
				}
				sb.append(s);
			}
			br.close();
			return sb.toString().trim();
		} catch (Exception e) {
			log.error("无法从服务器获取数据" + servletUrl, e);
			return null;
		}
	}

	public static String get(String servletUrl, Map<String, String> params, HttpResponseCallbackIF callback) {
		StringBuffer sbUrl = new StringBuffer(servletUrl);
		if (params != null) {
			Object[] ks = params.keySet().toArray();
			for (int i = 0; i < ks.length; i++) {
				sbUrl.append(sbUrl.indexOf("?") < 0 ? "?" : "&");
				sbUrl.append(ks[i] + "=" + params.get(ks[i]));
			}
		}
		try {
			URL url = new URL(sbUrl.toString());
			InputStream is = url.openStream();
			String result = callback.onHttpOK(is);
			is.close();
			return result;
		} catch (Exception e) {
			log.error("HTTP请求处理失败", e);
			return "请求失败";
		}
	}

	public static String postString(String serviceUrl, Map<String, String> params) {
		// 将参数拼接成url形式
		StringBuffer sbParams = new StringBuffer();
		if (params != null) {
			Object[] ks = params.keySet().toArray();
			for (int i = 0; i < ks.length; i++) {
				if (sbParams.length() > 0) {
					sbParams.append("&");
				}
				try {
					sbParams.append(ks[i] + "=" + new URLCodec().encode(params.get(ks[i]), "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					log.error("调用Rest服务出错：" + serviceUrl, e);
				}
			}
		}
		String parameter = sbParams.toString();

		try {
			URL url = new URL(serviceUrl);
			HttpURLConnection hc = (HttpURLConnection) url.openConnection();
			hc.setRequestMethod("POST");
			hc.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

			if (StrKit.isNotEmpty(parameter)) {
				hc.setDoOutput(true);
				OutputStream os = hc.getOutputStream();
				os.write(parameter.getBytes("UTF-8"));
				os.close();
			}

			if (hc.getResponseCode() == HttpURLConnection.HTTP_OK) {
				StringBuffer sb = new StringBuffer();
				InputStream in = hc.getInputStream();
				BufferedReader br = new BufferedReader(new InputStreamReader(in));
				for (String s = null; (s = br.readLine()) != null;) {
					sb.append(s);
				}
				br.close();
				return sb.toString();
			}

		} catch (Exception e) {
			log.error("调用Rest服务出错：" + serviceUrl, e);
		}
		return null;
	}

	public static String upload(String url, Map<String, String> mMap, Map<String, File> fileMap, HttpResponseCallbackIF callback) {
		try {
			String BOUNDARY = UUID.randomUUID().toString(); // 分隔符
			String PREFIX = "--", LINEND = "\r\n";
			String MULTIPART_FROM_DATA = "multipart/form-data";

			// 设置HTTP头
			URL requestUrl = new URL(url);
			HttpURLConnection hc = (HttpURLConnection) requestUrl.openConnection();
			hc.setRequestMethod("POST");
			hc.setDoOutput(true);
			hc.setDoInput(true);
			hc.setUseCaches(false);
			hc.setRequestProperty("Connection", "Keep-alive");
			hc.setRequestProperty("Content-Type", MULTIPART_FROM_DATA + ";boundary=" + BOUNDARY);
			OutputStream output = hc.getOutputStream();

			// 拼接参数
			if (mMap != null) {
				StringBuffer sb = new StringBuffer();
				Set<String> mKeySet = mMap.keySet();
				if (!mKeySet.isEmpty()) {
					Iterator<String> iterator = mKeySet.iterator();
					while (iterator.hasNext()) {
						String key = iterator.next();
						sb = sb.append(PREFIX);
						sb = sb.append(BOUNDARY);
						sb = sb.append(LINEND);
						sb = sb.append("Content-Disposition: form-data; name=\"" + key + "\"" + LINEND + LINEND);
						sb = sb.append(mMap.get(key));
						sb = sb.append(LINEND);
					}
				}

				byte[] data = sb.toString().getBytes();
				output.write(data);
			}

			// 拼接文件
			if (fileMap != null) {
				Set<String> fileKeySet = fileMap.keySet();
				if (!fileKeySet.isEmpty()) {
					Iterator<String> iterator = fileKeySet.iterator();
					while (iterator.hasNext()) {
						String key = iterator.next();
						File file = fileMap.get(key);
						StringBuilder sbFile = new StringBuilder();
						String path = file.getAbsolutePath();
						path = path.replaceAll("\\\\", "/");
						// 文件名进行转码，防止中文乱码
						String filename = URLEncoder.encode(path.substring(path.lastIndexOf("/") + 1), "UTF-8");
						sbFile = sbFile.append(PREFIX);
						sbFile = sbFile.append(BOUNDARY);
						sbFile = sbFile.append(LINEND);
						sbFile = sbFile.append("Content-Disposition: form-data; name=\"" + key + "\"; filename=\"" + filename + "\"" + LINEND);
						sbFile = sbFile.append("Content-Type: text/plain" + LINEND + LINEND); // 类型根据上传文件做修改
						output.write(sbFile.toString().getBytes());

						FileInputStream stream = new FileInputStream(file);
						byte[] b = new byte[4096];
						for (int n = 0; (n = stream.read(b)) != -1;) {
							output.write(b, 0, n);
						}
						stream.close();

						output.write(LINEND.getBytes());
					}
				}
			}

			// 结束标志
			byte[] end_data = (PREFIX + BOUNDARY + PREFIX + LINEND).getBytes();
			output.write(end_data);
			output.flush();

			// 得到响应码
			if (hc.getResponseCode() == HttpURLConnection.HTTP_OK) {
				InputStream is = hc.getInputStream();
				String result = callback.onHttpOK(is);
				is.close();
				return result;
			}
			return "HTTP请求失败:" + hc.getResponseCode();
		} catch (Exception e) {
			log.error("HTTP请求处理失败", e);
			return "请求失败";
		}
	}

	public static String download(String servletUrl, Map<String, String> params, String saveFilePath) {
		return get(servletUrl, params, new HttpFileCallback(saveFilePath));
	}

}
