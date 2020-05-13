package com.crudDemo.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class AddressForm extends ActionForm {
	private String name = null;
	private String address = null;
	private String emailAddress = null;
	private int phoneNumber = 0;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return this.address;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getEmailAddress() {
		return this.emailAddress;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	/**
	 * Reset all properties to their default values.
	 * 
	 * @param mapping The mapping used to select this instance
	 * @param request The servlet request we are processing
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.name = null;
		this.address = null;
		this.emailAddress = null;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		if (this.name == null || this.name.trim().equals(""))
			errors.add("name", new ActionMessage("errors.required", "Name"));
		if (this.address == null || this.address.trim().equals(""))
			errors.add("address", new ActionMessage("errors.required", "Address"));
		if (this.phoneNumber == 0)
			errors.add("phoneNumber", new ActionMessage("errors.required", "Phone Number"));
		return errors;
	}

}
