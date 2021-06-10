package com.springboot.test.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/")
public class TestController {
	
	@RequestMapping(value = "", method = {RequestMethod.GET}) 
	public ModelAndView intro(HttpServletRequest req, HttpServletResponse res){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/index");
		
		return mav;
	}
	
	@RequestMapping(value = "image", method = {RequestMethod.GET}) 
	public ModelAndView image(HttpServletRequest req, HttpServletResponse res){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/image");
		
		return mav;
	}
	
	@RequestMapping(value = "table1", method = {RequestMethod.GET}) 
	public ModelAndView table(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/table1");
		
		return mav;
	}
	
	@RequestMapping(value = "table2", method = {RequestMethod.GET}) 
	public ModelAndView table2(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/table2");
		
		return mav;
	}
}
