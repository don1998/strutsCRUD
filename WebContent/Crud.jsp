<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.apache.commons.beanutils.*" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<title>Crud Application</title>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script language="javascript">

$(document).ready(function () {
	
	var globalRequest = 0;
	
	 $('#search').bind('keyup', function (event) {
	     searchAction();
	        
	    });
	 
	 var searchAction = function () {
	        var resultContainer = $('#searchResult');
			var searchText = $('#search').val();
	        if (globalRequest == 1) {
	            return;
	        }

	        globalRequest = 1;
	        $.ajax({
	            url: '<%=request.getContextPath()%>/CrudAction.do',
	            dataType: 'html',
	            type: 'GET',
	            data: 'command=search&name='+searchText,
	            success: function (data) {
	                globalRequest = 0;
	                resultContainer.fadeOut('fast', function () {
	                    resultContainer.html('');
	                    resultContainer.append(data);
	                    resultContainer.fadeIn('fast');
	                });

	            }
	        });
	    };
	 
});



</script>
<style type="text/css">

#userForm {

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
	
	.alert-box {
    color:#555;
    border-radius:10px;
    font-family:Tahoma,Geneva,Arial,sans-serif;font-size:11px;
    padding:10px 10px 10px 36px;
    margin:10px;
	}
	
	.alert-box span {
	    font-weight:bold;
	    text-transform:uppercase;
	}
	
	.error {
	    background:#ffecec url('images/error.png') no-repeat 10px 50%;
	    border:1px solid #f5aca6;
	}
	.error {
	color: #D8000C;
	background-color: #FFBABA;
	background-image: url('error.png');
	}
	
	.error-field {
	background-color: #fdc5b9;
	}
	
	.readtable {
margin:0px;padding:0px;
width:100%;	box-shadow: 10px 10px 5px #888888;
border:1px solid #000000;

-moz-border-radius-bottomleft:0px;
-webkit-border-bottom-left-radius:0px;
border-bottom-left-radius:0px;

-moz-border-radius-bottomright:0px;
-webkit-border-bottom-right-radius:0px;
border-bottom-right-radius:0px;

-moz-border-radius-topright:0px;
-webkit-border-top-right-radius:0px;
border-top-right-radius:0px;

-moz-border-radius-topleft:0px;
-webkit-border-top-left-radius:0px;
border-top-left-radius:0px;
}.readtable table{
width:100%;
height:100%;
margin:0px;padding:0px;
}.readtable tr:last-child td:last-child {
-moz-border-radius-bottomright:0px;
-webkit-border-bottom-right-radius:0px;
border-bottom-right-radius:0px;
}
.readtable table tr:first-child td:first-child {
-moz-border-radius-topleft:0px;
-webkit-border-top-left-radius:0px;
border-top-left-radius:0px;
}
.readtable table tr:first-child td:last-child {
-moz-border-radius-topright:0px;
-webkit-border-top-right-radius:0px;
border-top-right-radius:0px;
}.readtable tr:last-child td:first-child{
-moz-border-radius-bottomleft:0px;
-webkit-border-bottom-left-radius:0px;
border-bottom-left-radius:0px;
}.readtable tr:hover td{

}.readtable tr:nth-child(odd){ background-color:#e5e5e5; }
.readtable tr:nth-child(even)    { background-color:#ffffff; }
.readtable td{
vertical-align:middle;


border:1px solid #000000;
border-width:0px 1px 1px 0px;
text-align:left;
padding:7px;
font-size:10px;
font-family:arial;
font-weight:normal;
color:#000000;
}.readtable tr:last-child td{
border-width:0px 1px 0px 0px;
}.readtable tr td:last-child{
border-width:0px 0px 1px 0px;
}.readtable tr:last-child td:last-child{
border-width:0px 0px 0px 0px;
}
.readtable tr:first-child td{
	background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);
background-color:#4c4c4c;
border:0px solid #000000;
text-align:center;
border-width:0px 0px 1px 1px;
font-size:14px;
font-family:arial;
font-weight:bold;
color:#ffffff;
}
.readtable tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);
background-color:#4c4c4c;
}
.readtable tr:first-child td:first-child{
border-width:0px 0px 1px 0px;
}
.readtable tr:first-child td:last-child{
border-width:0px 0px 1px 1px;
}
</style>
</head>
<body>

<html:messages id="msg" name="messages">
	<div class="success">
	    <li><bean:write name="msg" /></li>
	</div>
</html:messages>
<logic:messagesPresent property="error">
	<div class="alert-box error"><span>error: </span><html:errors/></div>
</logic:messagesPresent>


<h1>Create/Update</h1>
<html:form styleId="userForm" styleClass="rounded" action="CrudAction.do" >
<h3>
	<a href="/crudDemo/CrudAction.do?command=read"><img border="0" height="25px" width="25px" src="<c:url value="img/add-new.png"/>" alt="Create New User" /></a>
	Add/Edit User
</h3>

<logic:present name="edit-view">
	<html:hidden property="edit" value="edit" />
	<html:hidden property="id"/>
</logic:present>

<div class="field">
	<label for="productID">Name:</label>
  	<html:text styleClass="input" property="name" />
	<p class="hint">Enter Name.</p>
</div>

<div class="field">
	<label for="productName">Password:</label>
  	<html:text styleClass="input" property="password" />
	<p class="hint">Enter Password.</p>
</div>

<div class="field">
	<label for="stock">Company Name:</label>
  	<html:text styleClass="input" property="companyName" />
	<p class="hint">Enter your Company Name.</p>
</div>

<div class="field">
	<label for="weight">Email:</label>
	<html:text styleClass="input" property="email" />
	<p class="hint">Enter your email.</p>
</div>

<div class="field">
	<label for="weight">Website:</label>
	<html:text styleClass="input" property="website" />
	<p class="hint">Enter your website.</p>
</div>

<div class="field">
	<label for="weight">Phone number:</label>
	<html:text styleClass="input" property="phoneNumber" />
	<p class="hint">Enter your Phone Number.</p>
</div>

<div class="field">
	<label for="weight">Mobile Number:</label>
	<html:text styleClass="input" property="mobileNumber" />
	<p class="hint">Enter your Mobile Number.</p>
</div>

<logic:notPresent name="edit-view">
<html:submit styleClass="button" property="command"><bean:message key="crud.button.create"/></html:submit> 
</logic:notPresent>
<logic:present name="edit-view">
<html:submit styleClass="button" property="command"><bean:message key="crud.button.update"/></html:submit> 
</logic:present>
</html:form>

<br>
<h1>Read</h1>
<bean:define id="cols" name="rowSet" property="dynaProperties"/>
  <table class="readtable" border="2">
    <tr>
      <logic:iterate id="col" name="cols">
        <th><bean:write name="col" property="name"/></th>
      </logic:iterate>
      <td>Edit</td>
      <td>Delete</td>
    </tr>
    <logic:iterate id="row" name="rowSet" property="rows">
      <tr>
        <logic:iterate id="col" name="cols">
          <td>
            <bean:write name="row" property="<%=((DynaProperty)col).getName()%>"/>
          </td>
        </logic:iterate>
        <td>
        	<a href="/crudDemo/CrudAction.do?id=<bean:write name="row" property="id"/>&command=update&edit=view">Edit</a>
       	</td>
        <td>
        	<a href="/crudDemo/CrudAction.do?id=<bean:write name="row" property="id"/>&command=delete">Delete</a>
       	</td>
      </tr>
    </logic:iterate>
  </table>
  
<br>
<h1>Search</h1>
<input type="textbox" id="search" size="20" style="width: 300px;">
<div align="left" id="searchResult" style="width: 300px; border: #000000;"></div> 

</body>
</html>
<%
//Response Object
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>