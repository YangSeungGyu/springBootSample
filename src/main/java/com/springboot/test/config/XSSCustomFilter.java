package com.springboot.test.config;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

import lombok.extern.slf4j.Slf4j;

/**/
@Slf4j
public class XSSCustomFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		String reqUri = req.getRequestURI();
		String lastPathStr = reqUri.substring(reqUri.length()-1);
				
		if(!reqUri.equals("/") && lastPathStr.equals("/")) {			
			//log.error("worng path Error");
			throw new ServletException();			
		}		
		
		XSSReadableRequestWrapper requestWrapper = new XSSReadableRequestWrapper(req);
		chain.doFilter(requestWrapper, response);
		
		/* xss문자 미적용시 변경(메일,카카오,문자 등)
		if(!StringUtils.contains("/kakao/send, /mail/send, /mss/send",req.getRequestURI())) {
			XSSReadableRequestWrapper requestWrapper = new XSSReadableRequestWrapper(req);
			chain.doFilter(requestWrapper, response);
		}else {
			chain.doFilter(response, response);	
		}
		*/
	}
}
