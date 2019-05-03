package com.alphies.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alphies.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
	public RegisterController()
	{
		System.out.println("register new user");
	}
	
	@RequestMapping(value = "/add" , method = RequestMethod.POST)
	public ModelAndView addUser(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelAndView model)
	{
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		boolean qa = request.getParameter("qa") != null;
		boolean dev = request.getParameter("dev") != null;
		
		userService.add(uname, pass, firstname, lastname, qa, dev);
		
		model.setViewName("register.jsp");
		
		return model;
	}

}
