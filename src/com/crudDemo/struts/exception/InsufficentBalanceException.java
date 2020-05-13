package com.crudDemo.struts.exception;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ExceptionHandler;
import org.apache.struts.config.ExceptionConfig;

public class InsufficentBalanceException extends Exception{
	
	private String message = null;

	public InsufficentBalanceException() {
		super();
	}

	public InsufficentBalanceException(String message) {
		super(message);
		this.message = message;
	}

	public InsufficentBalanceException(Throwable cause) {
		super(cause);
	}

	@Override
	public String toString() {
		return message;
	}

	@Override
	public String getMessage() {
		return message;
	}

}
