package com.crudDemo.struts.action;

import java.util.List;
import java.util.Locale;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.Globals;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.actions.DispatchAction;

import com.crudDemo.app.dao.CitiesDAO;
import com.crudDemo.app.dao.CrudDAO;
import com.crudDemo.app.model.User;
import com.crudDemo.struts.form.UserForm;

public class CrudAction extends DispatchAction {

	public ActionForward create(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		User user = new User();
		// beanutils, copy from
		BeanUtils.copyProperties(user, (UserForm) form);

		CrudDAO crDao = new CrudDAO();
		int status = crDao.create(user);
		request.setAttribute("create", "created");
		read(mapping, form, request, response);

		if (status > 0) {
			ActionMessages messages = new ActionMessages();
			messages.add("STATUS", new ActionMessage("status.success"));
			request.setAttribute("messages", messages);
			request.setAttribute("edit-view", "edit-view");
		} else {
			ActionErrors errors = new ActionErrors();
			errors.add("error", new ActionMessage("crud.error", "This sucks!"));
			saveErrors(request, errors);
			// return mapping.getInputForward();
		}

		return mapping.findForward("success");
	}

	public ActionForward read(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		CrudDAO crDao = new CrudDAO();
		request.setAttribute("rowSet", crDao.read());
		return mapping.findForward("success");
	}

	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String edit = request.getParameter("edit");
		CrudDAO crDao = new CrudDAO();

		if (edit != null && edit.equals("view")) {
			String id = request.getParameter("id");
			User user = crDao.findUsersById(new Integer(id).intValue());
			BeanUtils.copyProperties((UserForm) form, user);
			// request.setAttribute("rowSet", crDao.read());
			read(mapping, form, request, response);
			request.setAttribute("edit-view", "edit-view");
		} else {
			User user = new User();
			BeanUtils.copyProperties(user, (UserForm) form);
			crDao.update(user);
			request.setAttribute("edit", "edit");
			read(mapping, form, request, response);
		}

		return mapping.findForward("success");
	}

	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		CrudDAO crDao = new CrudDAO();
		crDao.delete(new Integer(id).intValue());
		read(mapping, form, request, response);
		return mapping.findForward("success");
	}

	public ActionForward search(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		User user = new User();
		// beanutils, copy from
		BeanUtils.copyProperties(user, (UserForm) form);
		CrudDAO crDao = new CrudDAO();
		List<User> users = crDao.findUsers(user.getName());
		StringBuffer stbr = new StringBuffer();
		stbr.append("<table border=1 style='border: 2px solid #eeeeee;'>");
		for (User u : users) {
			stbr.append("<tr>");
			stbr.append("<td>").append(u.getId()).append("</td>");
			stbr.append("<td>").append(u.getName()).append("</td>");
			stbr.append("<td>").append(u.getPassword()).append("</td>");
			stbr.append("</tr>");
		}
		stbr.append("</table>");

		System.out.println("[CrudAction.search] stbr=" + stbr);

		response.setContentType("text/html");
		response.getWriter().write(stbr.toString());
		return null;
		// read(mapping, form, request, response);
		// return mapping.findForward("success");
	}

}
