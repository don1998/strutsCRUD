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

public class RegistrationAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res) {

		RegistrationForm registrationForm = (RegistrationForm) form;

		String username = registrationForm.getName();
		String password = registrationForm.getPassword();
		String companyName = registrationForm.getCompanyName();
		String email = registrationForm.getEmail();
		String website = registrationForm.getWebsite();
		String phoneNumber = registrationForm.getPhoneNumber();
		String mobileNumber = registrationForm.getMobileNumber();
		String country = registrationForm.getCountry();
		String message = registrationForm.getMessage();

		User user = new User(username, password, companyName, email, website,
				phoneNumber, mobileNumber, country, message);

		registerUser();
		UserAccountManager userAccountManager = new UserAccountManager();
		String outcome = userAccountManager.registerUser(user);

		if (outcome.equals("success")) {
			StringBuffer path = new StringBuffer(mapping.findForward("success")
					.getPath());
			boolean isQuery = (path.indexOf("?") >= 0);
			if (isQuery) {
				path.append("&amp;dispatch=view");
			} else {
				path.append("?dispatch=view");
			}
			// Get the user's session object.
			// Create a session (true) if one does not exist.
			HttpSession session = req.getSession(true);
			session.setAttribute("loggedIn", "true");
			return new ActionForward(path.toString());
		} else if (outcome.equals("redirect")) {
			ActionRedirect redirect = new ActionRedirect(
					mapping.findForward("doRedirect"));
			redirect.addParameter("param1", "value1");
			return redirect;
		} else if (outcome.equals("subSystemLogin")) {
			return mapping.findForward("subSystemLogin");
		} else if (outcome.equals("error")) {
			// Invalidate Session
			HttpSession session = req.getSession(false);
			session.setAttribute("loggedIn", "true");
			if (session != null) {
				session.invalidate();
			}

			//ActionForward errorForward = mapping.findForward("error");
//			errorForward.setProperty("logout", "true");
//			return errorForward;
			return mapping.findForward("logoff");
		}

		return mapping.findForward("success");
	}

	public void registerUser() {

	}

}
