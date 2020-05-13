package com.crudDemo.struts.exception;

import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ExceptionHandler;
import org.apache.struts.config.ExceptionConfig;

public class ApplicationSystemExceptionHandler extends ExceptionHandler {
	public ActionForward execute(Exception ex, ExceptionConfig ae,
			ActionMapping mapping, ActionForm formInstance,
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException {

		try {
			Properties properties = new Properties();
			properties.put("mail.host", "yourdomain.com");
			Session mailSession = Session.getDefaultInstance(properties, null);
			MimeMessage mailMessage = new MimeMessage(mailSession);
			mailMessage.setFrom(new InternetAddress("errors@some-company.com"));
			mailMessage.setRecipient(RecipientType.TO,new InternetAddress("sysadmin@yourdomain.com"));
			mailMessage.setSubject("Error in Struts application");
			mailMessage
					.setText("The mission critical app had a critical problem:\n"
							+ " " + ex + "\n\n"
							+ "Get your butt out to the office and fix it NOW.");
			Transport.send(mailMessage);
			System.out.println("Sent emergency email.");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return super.execute(ex, ae, mapping, formInstance, request, response);
	}

	protected void logException(Exception e) {

		System.out.println("Customized logException for:" + e);
		super.logException(e);
	}

	protected void storeException(HttpServletRequest request, String property,
			ActionMessage error, ActionForward forward, String scope) {

		System.out.println("Customized error storing for:" + error);
		super.storeException(request, property, error, forward, scope);
	}

}
