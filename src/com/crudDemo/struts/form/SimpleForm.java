package com.crudDemo.struts.form;

import org.apache.struts.action.ActionForm;

public class SimpleForm extends ActionForm{

	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
