package com.crudDemo.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.crudDemo.app.dao.CitiesDAO;

public class GetCitiesNamesAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String relativeWebPath = "/cities.xml";
		String absoluteDiskPath = getServlet().getServletContext().getRealPath(relativeWebPath);

		CitiesDAO citiesDAO = new CitiesDAO(absoluteDiskPath);

		String searchText = request.getParameter("getCities");
		String cities = citiesDAO.getCitiesByName(searchText);
		response.setContentType("application/xml");
		response.getWriter().write(cities);
		return null;
	}
}
