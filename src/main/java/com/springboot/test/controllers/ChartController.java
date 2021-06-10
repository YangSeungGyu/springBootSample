package com.springboot.test.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@RequestMapping(value = "{sampleNm}", method = {RequestMethod.GET}) 
	public ModelAndView intro(@PathVariable String sampleNm, HttpServletRequest req, HttpServletResponse res){		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chart/"+sampleNm);		
		return mav;
	}
}
