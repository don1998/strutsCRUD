<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
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
  <br>
  <hr/>
  <html:messages id="msg" name="messages">
       <li><bean:write name="msg" /></li>
   </html:messages>
</body>
</html>