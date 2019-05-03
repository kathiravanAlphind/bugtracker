package com.alphies.dao;

import java.util.List;

import com.alphies.model.Projects;
import com.alphies.model.Tickets;
import com.alphies.model.Users;

public interface UserDao {
	
	public List<Users> checkUser(String uname , String pass);
	
	public void add(String uname, String pass, String fname, String lname, boolean qa, boolean dev);
	
	public List<Projects> listAllProjects();
	
	public List<Projects> getProjects(int qa_id);
	
	public List<Tickets> getTickets(int user_id);
	
	public void createUpdateTicket(int id, int submitted_by,int project_id, String number, String title, String category,String description,String status);

}
