<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dyna Action Form</title>
</head>
<body>
	All Fields are mandatory :
	<html:form action="/registrationdyna" onsubmit="return(validate());">
		<table>
			<tr><td colspan="2"><html:errors/></td></tr>
			<tr><td>Name : </td><td><html:text property="name" onfocus="if (this.value == 'Name') {this.value = '';}"/></td></tr>
			<tr><td>Username : </td><td><html:text property="username" onfocus="if (this.value == 'User Name') {this.value = '';}"/></td></tr>
			<tr><td>Password : </td><td><html:password property="password"/></td></tr>
			<tr><td>Retype Password : </td><td><html:password property="rePassword"/></td></tr>
			<tr><td colspan="2"><html:submit value="Register Me"/></tr>
		<table>
	</html:form>
</body>
</html>