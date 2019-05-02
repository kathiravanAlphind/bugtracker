package com.alphies.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alphies.model.Projects;
import com.alphies.model.Tickets;
import com.alphies.model.Users;
import com.alphies.service.UserService;

@Controller
public class Usercontroller {
	
	@Autowired
	private UserService userService;
	
	private List<Projects> listProject;
	
	Tickets t = new Tickets();
	
	public Usercontroller() {
		System.out.println("user");
	}
	
	@RequestMapping(value = "/login" , method = RequestMethod.POST)
	public ModelAndView loginUser(HttpServletRequest request, HttpSession session)
	{
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		ModelAndView mav = new ModelAndView();
		
		List<Users> users = userService.checkUser(uname, pass);
				
		if(users!= null && users.size() > 0 && users.get(0).isQuality_assurance() == true)
		{
			session.setAttribute("userID", users.get(0).getId());
			System.out.println(users.get(0).getId());
			session.setAttribute("username", users.get(0).getFname());
			mav.addObject("username", uname);
			
			mav.setViewName("forward:/dashboard");	
		}
		else
		{
			mav.setViewName("index.jsp");
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/dashboard" , method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView listProjects(HttpServletRequest request, ModelAndView model, HttpServletResponse response, HttpSession session)
	{
		int qa_id = (Integer) session.getAttribute("userID");
		System.out.println(qa_id);
		
		String name = (String) session.getAttribute("username");
		
		this.listProject = userService.getProjects(qa_id);
		
		System.out.println(listProject.get(0).getPname());
		
		List<Tickets> listTickets;
		
		listTickets = userService.getTickets(qa_id);
		
		model.addObject("username", name);
		
		model.addObject("TicketList", listTickets);
		
		model.addObject("ProjectList", listProject);
		
		model.setViewName("dashboard.jsp");
		
		return model;
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView toProject(HttpServletRequest request, ModelAndView model, HttpServletResponse response, HttpSession session, @PathVariable int id) {
		session.setAttribute("project", id);
		
		model.setViewName("form.jsp");
		
		return model;
	}
	
	@RequestMapping(value = "/create" , method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView createTicket(HttpServletRequest request, HttpSession session, ModelAndView model)
	{
		
		int user_id = (Integer) session.getAttribute("userID");
		System.out.println(user_id);
		
		int id = 0;
		
		String number = "0";
		
		String title = request.getParameter("title");
		
		String category = request.getParameter("category");
		
		String description = request.getParameter("description");
		
		String status = "submitted";

		userService.createUpdateTicket(id, user_id, (Integer) session.getAttribute("project"), number, title, category , description, status);
		
		model.setViewName("redirect:/dashboard");
		
		return model;
	}
}
