package com.springboot.test.security;


public class Result {
	private String resultCode;
	private String resultMsg;
	
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


	public Result(String code, String message) {
		this.resultCode = code;
		this.resultMsg = message;
	}
}
