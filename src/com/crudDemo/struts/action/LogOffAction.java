package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionRedirect;

import com.crudDemo.app.account.UserAccountManager;
import com.crudDemo.app.model.User;
import com.crudDemo.struts.form.RegistrationForm;

public class LogOffAction extends Action {

	public ActionForward perform (ActionMapping mapping,ActionForm form,
            HttpServletRequest req, HttpServletResponse res) {
		
		//Invalidate Session
		HttpSession session = req.getSession(false);
		if (session != null){
			session.setAttribute("loggedIn", null);
			session.invalidate();
		}
		
		return mapping.findForward("mainpage");
	}

}
