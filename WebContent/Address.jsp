<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<head>
	<title>Address</title>
	<html:base />
</head>

<body bgcolor="white">
	<html:form action="/Address">
		<html:errors />

		<table>
			<tr>
				<td align="center" colspan="2">
					<font size="4">Please
						Enter the Following Details</font>
			</tr>
			<tr>
				<td align="right">Name</td>
				<td align="left">
					<html:text property="name" size="30" maxlength="30" />
				</td>
			</tr>
			<tr>
				<td align="right">Address</td>
				<td align="left">
					<html:text property="address" size="30" maxlength="30" />
				</td>
			</tr>

			<tr>
				<td align="right">E-mail address</td>
				<td align="left">
					<html:text property="emailAddress" size="30" maxlength="30" />
				</td>
			</tr>

			<tr>
				<td align="right">Phone Number</td>
				<td align="left">
					<html:text property="phoneNumber" size="30" maxlength="30" />
				</td>
			</tr>
			<tr>
				<td align="right">
					<html:submit>Save</html:submit>
				</td>
				<td align="left">
					<html:cancel>Cancel</html:cancel>
				</td>
			</tr>
		</table>
	</html:form>
</body>