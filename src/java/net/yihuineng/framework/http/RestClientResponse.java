package net.yihuineng.framework.http;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.jfinal.log.Logger;

public class RestClientResponse {

	private final Logger log = Logger.getLogger(getClass());

	private int responseCode;
	private String responseMessage;
	private String responseBody;

	public int getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}

	public String getResponseMessage() {
		return responseMessage;
	}

	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}

	public String getResponseBody() {
		return responseBody;
	}

	public void setResponseBody(String responseBody) {
		this.responseBody = responseBody;
	}

	public JSONObject getResponseJsonObject() {
		try {
			return new JSONObject(responseBody);
		} catch (JSONException e) {
			log.error("数据不是有效的Json格式：" + responseBody, e);
			return null;
		}
	}

	public JSONArray getResponseJsonArray() {
		try {
			return new JSONArray(responseBody);
		} catch (JSONException e) {
			log.error("数据不是有效的Json格式：" + responseBody, e);
			return null;
		}
	}

	public void setResponseInfo(int responseCode, String responseMessage) {
		this.responseCode = responseCode;
		this.responseMessage = responseMessage;
	}

}
