<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#customerForm {

	width: 500px;
	padding: 20px;
	background: #f0f0f0;
	overflow:auto;

	/* Border style */
	border: 1px solid #cccccc;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;	

	/* Border Shadow */
	-moz-box-shadow: 2px 2px 2px #cccccc;
	-webkit-box-shadow: 2px 2px 2px #cccccc;
	box-shadow: 2px 2px 2px #cccccc;

	}


label {
	font-family: Arial, Verdana;
	text-shadow: 2px 2px 2px #ccc;
	display: block;
	float: left;
	font-weight: bold;
	margin-right:10px;
	text-align: right;
	width: 120px;
	line-height: 25px;
	font-size: 15px;
	}

	.input{
	font-family: Arial, Verdana;
	font-size: 15px;
	padding: 5px;
	border: 1px solid #b9bdc1;
	width: 300px;
	color: #797979;
	}
		
	.hint{
	display:none;
	}
	
	field:hover .hint {
	position: absolute;
	display: block;
	margin: -30px 0 0 455px;
	color: #FFFFFF;
	padding: 7px 10px;
	background: rgba(0, 0, 0, 0.6);

	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;
	}
	
	.button{
	float: right;
	margin:10px 55px 10px 0;
	font-weight: bold;
	line-height: 1;
	padding: 6px 10px;
	cursor:pointer;
	color: #fff;

	text-align: center;
	text-shadow: 0 -1px 1px #64799e;

	/* Background gradient */
	background: #a5b8da;
	background: -moz-linear-gradient
       (top, #a5b8da 0%, #7089b3 100%);
	background: -webkit-gradient
       (linear, 0% 0%, 0% 100%,
       from(#a5b8da), to(#7089b3));

	/* Border style */
  	border: 1px solid #5c6f91;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;

	/* Box shadow */
	-moz-box-shadow: inset 0 1px 0 0 #aec3e5;
	-webkit-box-shadow: inset 0 1px 0 0 #aec3e5;
	box-shadow: inset 0 1px 0 0 #aec3e5;

	}
	
	.info, .success, .warning, .error, .validation {
	border: 1px solid;
	margin: 10px 0px;
	padding:15px 10px 15px 50px;
	background-repeat: no-repeat;
	background-position: 10px center;
	}
	.success {
	color: #4F8A10;
	background-color: #DFF2BF;
	background-image:url('success.png');
	}
	
	.error {
	color: #D8000C;
	background-color: #FFBABA;
	background-image: url('error.png');
	}
	
	.error-field {
	background-color: #fdc5b9;
	}
</style>
</head>
<body>

<html:messages id="msg" name="messages">
	<div class="success">
	    <li><bean:write name="msg" /></li>
	</div>
</html:messages>
<html:form styleId="customerForm" styleClass="rounded" action="ProcessCustomer.do" onsubmit="validateCustomerForm(this);">
<html:javascript formName="customerForm" />
<h3>Add Customer Form</h3>

<div class="field">
	<label for="name">Name:</label>
  	<html:text styleClass="input" property="name" errorStyleClass="error-field" errorKey="org.apache.struts.action.ERROR"/>
	<p class="hint">Enter Name.</p>
	<html:errors property="name" />	
</div>

<div class="field">
	<label for="name">Phone Number:</label>
  	<html:text styleClass="input" property="phoneNumber" errorStyleClass="error-field" errorKey="org.apache.struts.action.ERROR"/>
	<p class="hint">Enter Phone Number.</p>
	<html:errors property="phoneNumber" />	
</div>


<div class="field">
	<label for="name">Date of Birth:</label>
  	<html:text styleClass="input" property="dateOfBirth" errorStyleClass="error-field" errorKey="org.apache.struts.action.ERROR"/>
	<p class="hint">Enter Date of Birth.</p>
	<html:errors property="dateOfBirth" />	
</div>

<div class="field">
	<label for="name">Credit Card:</label>
  	<html:text styleClass="input" property="creditCard" errorStyleClass="error-field" errorKey="org.apache.struts.action.ERROR"/>
	<p class="hint">Enter Credit Card.</p>
	<html:errors property="creditCard" />	
</div>

<div class="field">
	<label for="name">Email:</label>
  	<html:text styleClass="input" property="email" errorStyleClass="error-field" errorKey="org.apache.struts.action.ERROR"/>
	<p class="hint">Enter Email.</p>
	<html:errors property="email" />	
</div>

<html:submit styleClass="button" value="Submit"/>
</html:form>

</body>
</html>