package com.springboot.test.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
    @Autowired
    AuthProvider authProvider;
    
    @Autowired
    AuthFailureHandler authFailureHandler;
 
    @Autowired
    AuthSuccessHandler authSuccessHandler;
    
    @Override
	public void configure(WebSecurity web) { // 4
		web.ignoring().antMatchers("/css/**", "/js/**", "/img/**");
	}
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(authProvider);
    }

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		 http.authorizeRequests() // 페이지 권한 설정
		 //막는 로직일 수록 최상단
		 //.antMatchers("/**").denyAll() 접근방지
		 //.antMatchers("/**").hasAuthority("ROLL_USER") 권한 사용시 AuthProvider에서 셋팅
		 //.antMatchers("/**").authenticated() 시큐리티 인증 후 접근	
		 .antMatchers("/**").permitAll()
         .and()
         //login
         .formLogin()
         .loginProcessingUrl("/login")
         .failureHandler(authFailureHandler)
         .successHandler(authSuccessHandler)
         .usernameParameter("userId")
         .passwordParameter("userPwd")
         .and()
         //logout
         .logout()
         .permitAll()
         .logoutUrl("/logout")
         .logoutSuccessUrl("/main")
         .invalidateHttpSession(true)
         .deleteCookies("JSESSIONID");		 		 
		 
	}

}
