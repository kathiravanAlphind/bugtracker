package com.alphies.dao;



import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alphies.model.Projects;
import com.alphies.model.Tickets;
import com.alphies.model.Users;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionfactory;

	@SuppressWarnings("unchecked")
	public List<Users> checkUser(String uname, String pass) {
		Query query = sessionfactory.getCurrentSession().createQuery("from Users u where u.uname = :uname and u.pass = :pass");

		query.setString("uname", uname);
		query.setString("pass", pass);

		@SuppressWarnings("rawtypes")
		List result = query.list();

		System.out.println("result");
		System.out.println(result.toString());

		return result;
	}

	@SuppressWarnings({ "unchecked" })
	public List<Projects> listAllProjects() {

		return sessionfactory.getCurrentSession().createQuery("from Projects").list();

	}

	@SuppressWarnings("unchecked")
	public List<Projects> getProjects(int qa_id) {

		SQLQuery query;

		String sql = "select projects.id, projects.pname from projects inner join users on users.id = projects.tl_id where projects.tl_id = :tlid";

		query = sessionfactory.getCurrentSession().createSQLQuery(sql);

		query.setParameter("tlid", qa_id);

		List<Object[]> result = query.list();

		List<Integer> pList = new ArrayList<Integer>();

		Projects project;

		List<Projects> projects = new ArrayList<Projects>();

		for(Object[] row : result)
		{
			int pid = (Integer) row[0];

			if(!pList.contains(pid))
			{
				project = new Projects();

				project.setId(pid);
				project.setPname((String)row[1]);

				projects.add(project);
				pList.add(pid);
			}
		}

		return projects;
	}

	@SuppressWarnings("unchecked")
	public List<Tickets> getTickets(int user_id) {

		SQLQuery query;

		String sql = "select tickets.id, submitted_by, project_id, number, category, description, status, date from tickets inner join users on users.id = tickets.submitted_by where submitted_by = :id";

		query = sessionfactory.getCurrentSession().createSQLQuery(sql);

		query.setParameter("id", user_id);

		List<Object[]> result = query.list();

		List<Integer> idList = new ArrayList<Integer>();

		Tickets ticket;

		List<Tickets> tickets = new ArrayList<Tickets>();

		for(Object[] row: result)
		{
			int tid = (Integer) row[0];

			if(!idList.contains(tid))
			{
				ticket = new Tickets();

				ticket.setId(tid);
				ticket.setSubmitted_by((Integer)row[1]);
				ticket.setProject_id((Integer)row[2]);
				ticket.setNumber((String)row[3]);
				ticket.setCategory((String) row[4]);
				ticket.setDescription((String)row[5]);
				ticket.setStatus((String) row[6]);
				ticket.setDate((Date) row[7]);

				tickets.add(ticket);
				idList.add(tid);
			}
		}
		return tickets;
	}

	public void createUpdateTicket(int id, int submitted_by, int project_id, String number, String title, String category, String description, String status, String date) {
		

		//String sql = "call sp_iu_tickets(:id, :submitted_by, :project_id, :number, :title, :category, :description, :status)";

		//query = sessionfactory.getCurrentSession().createSQLQuery(sql);
		
		Query query = sessionfactory.getCurrentSession().createSQLQuery("CALL sp_iu_tickets(:id, :submitted_by, :project_id, :number, :title, :category, :description, :status, :date)");//.addEntity(Tickets.class);
		
		query.setInteger("id", id);
		query.setInteger("submitted_by", submitted_by);
		query.setInteger("project_id", project_id);
		query.setString("number", number);
		query.setString("title", title);
		query.setString("category", category);
		query.setString("description", description);
		query.setString("status", status);
		query.setString("date", date);
		
		int result = query.executeUpdate();
		
		
		System.out.println(result);
	}

	@SuppressWarnings("unused")
	public void add(String uname, String pass, String fname, String lname, boolean qa, boolean dev) {
		
		SQLQuery query;
		
		String sql = "INSERT INTO `users` (`uname`, `pass`, `fname`, `lname`, `qa`, `dev`) VALUES (:uname, :pass, :fname, :lname, :qa, :dev)";
		
		query = sessionfactory.getCurrentSession().createSQLQuery(sql);
		
		query.setString("uname", uname);
		
		query.setString("pass", pass);
		
		query.setString("fname", fname);
		
		query.setString("lname", lname);
		
		query.setBoolean("qa", qa);
		
		query.setBoolean("dev", dev);
		
		int results = query.executeUpdate();
	}
	
	
	
	
}
