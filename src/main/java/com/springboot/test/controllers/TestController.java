package com.springboot.test.controllers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.springboot.test.security.Result;


@Controller
@RequestMapping("/")
public class TestController {
	
	@Autowired
	private Gson gson;
	
	@RequestMapping(value = "", method = {RequestMethod.GET}) 
	public ModelAndView intro(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/test", method = {RequestMethod.GET}) 
	public ModelAndView test(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/test");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="getTestEtwByTimeList", method = {RequestMethod.POST})
	public ResponseEntity<String> getTestEtwByTimeList(@RequestParam Map<String, Object> param,HttpServletRequest req, HttpServletResponse res){
		Result result;
		
		
		result = new Result("200", "성공");
		result.setData("testData", "111");
		return ResponseEntity.ok(gson.toJson(result));
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
	
	@RequestMapping(value = "table3", method = {RequestMethod.GET}) 
	public ModelAndView table3(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/table3");
		
		return mav;
	}
}
