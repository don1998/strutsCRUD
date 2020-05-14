<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>Action Form</title>
<html:base />
</head>

<body bgcolor="white">
	<html:form action="/Address">
		<html:errors />

		<table>
			<tr>
				<td align="center" colspan="2"><font size="4">Please
						Enter the Following Details</font>
			</tr>
			<tr>
				<td align="right">Name</td>
				<td align="left"><html:text property="name" size="30"
						maxlength="30" /></td>
			</tr>
			<tr>
				<td align="right">Address</td>
				<td align="left"><html:text property="address" size="30"
						maxlength="30" /></td>
			</tr>

			<tr>
				<td align="right">E-mail address</td>
				<td align="left"><html:text property="emailAddress" size="30"
						maxlength="30" /></td>
			</tr>
			
			<tr>
				<td align="right">Phone Number</td>
				<td align="left"><html:text property="phoneNumber" size="30"
						maxlength="30" /></td>
			</tr>
			<tr>
				<td align="right"><html:submit>Save</html:submit></td>
				<td align="left"><html:cancel>Cancel</html:cancel></td>
			</tr>
		</table>
	</html:form>
</body>
