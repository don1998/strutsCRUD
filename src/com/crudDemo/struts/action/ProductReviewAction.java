package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import com.crudDemo.struts.form.ProductsForm;

public class ProductReviewAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ProductsForm productsForm = (ProductsForm) form;
		System.out.println(productsForm);

		ActionMessages messages = new ActionMessages();
		messages.add("STATUS", new ActionMessage("status.success"));
		request.setAttribute("messages", messages);

		return mapping.getInputForward();
	}

}
