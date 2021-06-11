package com.springboot.test.config;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class XSSReadableRequestWrapper extends HttpServletRequestWrapper {
	private HttpServletRequest req;
	private String[] deleteStrArr;
	private Map<String, String[]> parameterMap;

	public XSSReadableRequestWrapper(HttpServletRequest req) {
		super(req);
		this.req = req;
		deleteStrArr =  new String[]{"alert","confirm","console.log","eval","submit","onload","onclick","javascript:","onChange","onBlur"
				,"onSelect","onStart","onScroll","onFocus","onKeyDown","onKeyPress","onKeyUp","onStop","onSubmit"};
		
	}

	@Override
	public String getParameter(String name) {
		if (parameterMap == null) {
			return req.getParameter(name);
		}

		String[] strings = parameterMap.get(name);
		if (strings != null) {
			return strings[0];
		}
		return null;
	}

	@Override
	public Map<String, String[]> getParameterMap() {
		return getXssValueeterMap();
	}


	@Override
	public String[] getParameterValues(String name) {
		if (parameterMap == null) {
			return this.getXssValueeterValues(name);
		}
		
		HashMap<String, String[]> xssParameterMap = getXssValueeterMap();
		return xssParameterMap.get(name);
	}
	
	private String[] getXssValueeterValues(String name) {
		String[] tempArr = req.getParameterValues(name);
		String[] paramArr = null;
		if(tempArr != null) {
			paramArr = new String[tempArr.length];;
			for(int i=0; i<tempArr.length ; i++) {
				paramArr[i] = getXssValue(tempArr[i]); 
			}
		}
		return paramArr;
	}
	
	private HashMap<String, String[]> getXssValueeterMap(){
		HashMap<String, String[]> paramMap = (HashMap<String, String[]>)req.getParameterMap();
		Iterator<String> keys = paramMap.keySet().iterator();
    	while ( keys.hasNext() ) {
    	    String key = keys.next();
    	    String[] valueArr = paramMap.get(key);
    	    for(int i=0 ; i< valueArr.length; i++) {
    	    	String valueStr = valueArr[i];
    	    	valueArr[i] = getXssValue(valueStr);
    	    }
    	}
		return paramMap;
	}
	
	private String getXssValue(String value){	   
		for(String targetStr : deleteStrArr) {
			//단순히 지우기만 하면 alalertert -> alert로 치환된다
			value = value.replaceAll(targetStr,"_");
		}
		return value;
	}
}