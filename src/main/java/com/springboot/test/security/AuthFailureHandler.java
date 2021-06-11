package com.springboot.test.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class AuthFailureHandler  extends SimpleUrlAuthenticationFailureHandler{
	@Autowired
	private Gson gson;

	 @Override
	 public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			 AuthenticationException exception) throws IOException, ServletException {
		 	
		 String code = "400";
		 if(exception instanceof DisabledException) {
			 	code = "300";
		 }
		 Result result = new Result(code, exception.getMessage());
		 
		 //ResponseEntity<String> rspEntt = ResponseEntity.ok(gson.toJson(result));
		 response.setContentType("Application/json; charset=UTF-8");
		 response.setStatus(HttpServletResponse.SC_OK);
		 response.getWriter().print(gson.toJson(result));
		 response.getWriter().flush();
	}
}

