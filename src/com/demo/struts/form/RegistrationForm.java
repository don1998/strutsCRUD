package com.demo.struts.form;

import org.apache.struts.action.ActionForm;

public class RegistrationForm extends ActionForm{
	
 private String name;
 private String password;
 
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
