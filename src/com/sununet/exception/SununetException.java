package com.sununet.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class SununetException implements HandlerExceptionResolver{

	public ModelAndView resolveException(HttpServletRequest req,
			HttpServletResponse res, Object handler, Exception ex) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
