package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.crudDemo.struts.form.AddressForm;

public class AddressAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		AddressForm addressForm = (AddressForm) form;
		addressForm.setAddress(addressForm.getAddress() + "-changed in action");

		return mapping.findForward("success");
	}
}
