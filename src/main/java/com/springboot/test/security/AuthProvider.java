package com.springboot.test.security;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component("authProvider")
public class AuthProvider  implements AuthenticationProvider   {
	
	
	 //@Autowired
	//TestService testService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String userId = authentication.getName();
        String userPwd =  authentication.getCredentials().toString();
        boolean diffLoginDate = false;
		User user = null;
		
		if(StringUtils.isEmpty(userPwd)) {
			throw new BadCredentialsException("로그인에 실패하였습니다.");
		}
		
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("userId", userId);
        param.put("userPwd", userPwd);
        
        try {
        	//testService 로 검증로직 및 failCnt 등 진행
        	
        	//throw new LockedException("1111");
        	//throw new DisabledException("2222");
        	//throw new BadCredentialsException("333");
        	//throw new DisabledException("444");
	       
        } catch(AuthenticationException e) {
			throw e;
		} catch(Exception e) {
			e.printStackTrace();
			throw new BadCredentialsException("에러 발생");
		}
        
        List<GrantedAuthority> grantedAuthorityList = new ArrayList<>();
        //grantedAuthorityList.add(new SimpleGrantedAuthority("ROLL_USER")); 권한 사용시
 
        return new UsernamePasswordAuthenticationToken(user, userPwd, grantedAuthorityList);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
	
	
}

