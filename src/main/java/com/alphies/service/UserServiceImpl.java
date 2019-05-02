package com.alphies.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alphies.dao.UserDao;
import com.alphies.model.Projects;
import com.alphies.model.Tickets;
import com.alphies.model.Users;


@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userdao;
	

	public List<Projects> listAllProjects() {
		
		return userdao.listAllProjects();
	}
	
	public List<Users> checkUser(String uname, String pass) {
		return userdao.checkUser(uname, pass);
	}

	public List<Projects> getProjects(int qa_id) {
		return userdao.getProjects(qa_id);
	}

	public List<Tickets> getTickets(int user_id) {
		// TODO Auto-generated method stub
		return userdao.getTickets(user_id);
	}

	public void createUpdateTicket(int id, int submitted_by, int project_id, String number, String title,
			String category, String description, String status) {
		// TODO Auto-generated method stub
		 userdao.createUpdateTicket(id, submitted_by, project_id, number, title, category, description, status);
	}
	
}
