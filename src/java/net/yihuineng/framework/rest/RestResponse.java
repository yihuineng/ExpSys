package net.yihuineng.framework.rest;

import java.util.HashMap;

public class RestResponse extends HashMap<String, Object> {
	
	private static final long serialVersionUID = 1L;

	public RestResponse setStatus(int status) {
		putResult("status", status);
		return this;
	}
	
	public RestResponse setMessage(String message) {
		putResult("message", message);
		return this;
	}
	
	public RestResponse setSuccess(String message) {
		setStatus(1);
		setMessage(message);
		return this;
	}
	
	public RestResponse setError(String message) {
		setStatus(0);
		setMessage(message);
		return this;
	}
	
	public RestResponse setError(int status, String message) {
		setStatus(status);
		setMessage(message);
		return this;
	}
	
	@SuppressWarnings("unchecked")
	private void putResult(String key, Object val) {
		HashMap<String,Object> result = null;
		if (containsKey("result")) {
			result = (HashMap<String,Object>) get("result");
		} else {
			result = new HashMap<String, Object>();
			put("result", result);
		}
		result.put(key, val);
	}

}
