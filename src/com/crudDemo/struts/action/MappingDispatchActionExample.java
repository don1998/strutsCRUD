package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

public class MappingDispatchActionExample extends MappingDispatchAction {

	public ActionForward generateXML(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String xml = "<message>hello</message>";

		request.setAttribute("method", xml);

		return mapping.findForward("success");
	}

	public ActionForward generateJSON(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String json = "{ \"firstName\":\"John\"}";
		request.setAttribute("method", json);

		return mapping.findForward("success");
	}

}
