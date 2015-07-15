package com.mao.pojo;

import org.hibernate.validator.constraints.NotEmpty;

public class Admin {
	
	private int id;
	@NotEmpty(message="232")
	private String name;
	@NotEmpty(message="{password.not.empty}")
	private String password;
	private String role;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@NotEmpty(message="232")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
