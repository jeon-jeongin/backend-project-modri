package com.mycompany.project.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("UserVO")
public class UserVO {
	
	private String id;
	private String pass;
	private String name;
	private String gender;
	private Date birth;
	private Date date;
	private int grage;
	
	public UserVO() {
		
	}

	public UserVO(String id, String pass, String name, String gender, Date birth, Date date, int grage) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.date = date;
		this.grage = grage;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getGrage() {
		return grage;
	}

	public void setGrage(int grage) {
		this.grage = grage;
	}
}
