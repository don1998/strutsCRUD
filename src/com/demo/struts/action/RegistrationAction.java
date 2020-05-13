package com.demo.struts.action;

import javax.servlet.http.*;
import org.apache.struts.action.*;
import com.demo.struts.form.RegistrationForm;

public class RegistrationAction extends Action {
	
	public ActionForward perform (ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) {
		
		RegistrationForm registrationForm = (RegistrationForm) form;
		String username = registrationForm.getName();
		String password = registrationForm.getPassword();
		
		registerUser();
		
		return mapping.findForward("success");
	}
	
	public void registerUser() {
		
	}
}
