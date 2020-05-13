<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
  <title>Lookup Dispatch Action Example</title>
</head>
<body bgcolor="white">
<h2>Lookup Dispatch Action Example</h2>
<html:link page="/Locale-LookupDispatchExample.do?method=chinese">Chinese</html:link>
<html:link page="/Locale-LookupDispatchExample.do?method=english">English</html:link>
<html:link page="/Locale-LookupDispatchExample.do?method=german">German</html:link>
<html:link page="/Locale-LookupDispatchExample.do?method=france">France</html:link>

  <html:form method="get" action="/UserAction">
    <bean:message key="label.common.username" />:&nbsp;<html:text property="username"/>    
    <p>
    <html:submit property="methodToCall"><bean:message key="button.edit"/></html:submit> 
    <html:submit property="methodToCall"><bean:message key="button.remove"/></html:submit> 
    </p>
  </html:form>
  
  <hr/>
  <html:messages id="msg" name="messages">
       <li><bean:write name="msg" /></li>
   </html:messages>
</body>
</html>