package com.crudDemo.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class UserForm extends ActionForm{
	String id;
	private String username;
	private String name;
	private String password;
	private String companyName;
	private String email;
	private String website;
	private String phoneNumber;
	private String mobileNumber;
	private String country;
	private String message;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		
		ActionErrors errors = new ActionErrors();
	      
	    if( getUsername() == null || ("".equals(getUsername())))
	    {
	       errors.add("common.username.err",
	    		   new ActionMessage("error.common.username.required"));
	    }
	      
	    if( getPassword() == null || ("".equals(getPassword())))
	    {
	       errors.add("common.password.err",
	    		   new ActionMessage("error.common.password.required"));
	    }
	    
	    return errors;
	}
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// reset properties
		username = "";
		password = "";
	}

	
}