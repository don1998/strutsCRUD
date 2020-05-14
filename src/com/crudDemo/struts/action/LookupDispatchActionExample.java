package com.crudDemo.struts.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.actions.LookupDispatchAction;

import com.crudDemo.app.constants.WebConstants;

public class LookupDispatchActionExample extends LookupDispatchAction{

	protected Map getKeyMethodMap() {
		Map map = new HashMap();
		map.put("button.edit", "update");
		map.put("button.remove", "delete");
		return map;
	}

	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ActionMessages messages = new ActionMessages();
        messages.add("STATUS", new ActionMessage("status.update"));
        request.setAttribute("messages", messages);
		return mapping.findForward(WebConstants.SUCCESS);
	}

	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		ActionMessages messages = new ActionMessages();
        messages.add("STATUS", new ActionMessage("status.remove"));
        request.setAttribute("messages", messages);
		return mapping.findForward(WebConstants.SUCCESS);
	}

}
