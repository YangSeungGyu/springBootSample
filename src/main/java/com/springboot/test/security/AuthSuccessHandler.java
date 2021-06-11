package com.springboot.test.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class AuthSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{
	@Autowired
	private Gson gson;
	

	 @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws ServletException, IOException {
	 	HttpSession session = request.getSession();
		session.invalidate();
		HttpSession newSession = request.getSession(true);
		response.setStatus(HttpServletResponse.SC_OK);
		Result result = null;
	 	
        User user = (User)authentication.getPrincipal();
        newSession.setAttribute("userId", user.getUserId());
        
        result = new Result("200", "성공");
	
		//한쪽으로 통일해야함.
		newSession.setAttribute("userName", user.getUserId());
		newSession.setMaxInactiveInterval(60*30);
		
		//User 정보에서 필수 UserInfo로 변경
		UsernamePasswordAuthenticationToken newAuth = new UsernamePasswordAuthenticationToken(user.getUserId(), authentication.getCredentials(), authentication.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(newAuth);
        
		 response.setContentType("Application/json; charset=UTF-8");
		 response.setStatus(HttpServletResponse.SC_OK);
		 response.getWriter().print(gson.toJson(result));
		 response.getWriter().flush();
    }
}

