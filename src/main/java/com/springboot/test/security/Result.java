package com.springboot.test.security;

import java.util.HashMap;
import java.util.Map;

public class Result {
	private String resultCode;
	private String resultMsg;
	private  Map<String,Object> data;
	
	public String getResultCode() {
		return resultCode;
	}


	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Map<String, Object> getData() {
		return data;
	}
	public void setData(String key,Object value) {
		data.put(key, value);
	}


	public Result(String code, String message) {
		this.resultCode = code;
		this.resultMsg = message;
		this.data = new HashMap<String,Object>();
	}
}
