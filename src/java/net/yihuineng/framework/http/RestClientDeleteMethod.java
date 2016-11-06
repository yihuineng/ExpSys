package net.yihuineng.framework.http;

import org.apache.commons.httpclient.methods.PostMethod;

/**
 * 修改DeleteMethod方法不支持发送Request Body的问题，用以支持不标准的Rest Delete接口
 * @author ehuan
 *
 */
public class RestClientDeleteMethod extends PostMethod {
	
	public RestClientDeleteMethod(String url) {
		super(url);
	}

	public String getName() {
		return "DELETE";
	}
	
}
