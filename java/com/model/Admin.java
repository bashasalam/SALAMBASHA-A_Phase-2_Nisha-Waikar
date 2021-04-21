package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_table")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "user_id")
	private Integer userId;
	
	@Column(name = "user_name")
	private String userName;
	
	
	private String password;
	
	
	
	public Admin() {
		super();
	}

	public Admin( String userName, String password) {
		super();
		//this.userId = userId;
		this.userName = userName;
		this.password = password;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassWord(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [userId=" + userId + ", userName=" + userName + ", password=" + password + "]";
	}
	
	

}
