package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import com.crudDemo.struts.form.CarSearchForm;

public class CarSearchAction extends Action {

		@Override
		public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			
			CarSearchForm carSearchForm = (CarSearchForm)form;
			System.out.println(carSearchForm);
			
			request.setAttribute("success", "success");
			
			ActionMessages messages = new ActionMessages();
	        messages.add("STATUS", new ActionMessage("status.car.search.success"));
	        request.setAttribute("messages", messages);
			
			return mapping.getInputForward();
		}

}
