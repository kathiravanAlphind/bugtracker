package com.alphies.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {

	@Override
	public String toString() {
		return "Users [id=" + id + ", uname=" + uname + ", pass=" + pass + ", fname=" + fname + ", lname=" + lname
				+ ", qa=" + qa + ", dev=" + dev + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column
	private String uname;

	@Column
	private String pass;

	@Column
	private String fname;

	@Column
	private String lname;

	@Column
	private boolean qa;

	@Column
	private boolean dev;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public boolean isQuality_assurance() {
		return qa;
	}

	public void setQuality_assurance(boolean quality_assurance) {
		this.qa = quality_assurance;
	}

	public boolean isDeveloper() {
		return dev;
	}

	public void setDeveloper(boolean developer) {
		this.dev = developer;
	}
}