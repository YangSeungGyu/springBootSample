package com.springboot.test;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

import com.navercorp.lucy.security.xss.servletfilter.XssEscapeServletFilter;
import com.springboot.test.config.XSSCustomFilter;


public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(TestApplication.class);
	}
	
	@Bean
    public FilterRegistrationBean xssEscapeServletFilter() {

        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(new XssEscapeServletFilter());
        registrationBean.setOrder(1);  // @Order로 처리.
        registrationBean.addUrlPatterns("/*");
        
        return registrationBean;
    }
	
	@Bean
    public FilterRegistrationBean xssCustomFilter() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(new XSSCustomFilter());
        registrationBean.setOrder(2);  // @Order로 처리.
        registrationBean.addUrlPatterns("/*");
        return registrationBean;
    }

}
