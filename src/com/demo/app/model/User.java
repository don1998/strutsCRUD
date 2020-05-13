package com.demo.app.model;

public class User {
	
	private String name;
	
	private String password;
	
	public User() {
		super();
	}
	
	public User(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	
	 public void setName(String name) {
		 this.name = name;
	 }
	 
	 public void setPassword(String password) {
		 this.password = password;
	 }
	 
	 public String getName() {
		 return name;
	 }
	 
	 public String getPassword() {
		 return password;
	 }
}
