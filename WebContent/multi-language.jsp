<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<body>
<h1><bean:message key="label.common.message" /></h1>

<html:messages id="err_name" property="common.username.err">
<div style="color:red">
	<bean:write name="err_name" />
</div>
</html:messages>

<html:messages id="err_password" property="common.password.err">
<div style="color:red">
	<bean:write name="err_password" />
</div>
</html:messages>
<br />
<br />
<html:link page="/Locale.do?method=chinese">Chinese</html:link>
<html:link page="/Locale.do?method=english">English</html:link>
<html:link page="/Locale.do?method=german">German</html:link>
<html:link page="/Locale.do?method=france">France</html:link>

<html:form action="/Submit">
<br />
<bean:message key="label.common.username" /> : <html:text property="username" />
<br />
<br />
<bean:message key="label.common.password" /> : <html:text property="password" />
<br />
<br />

<html:submit><bean:message key="label.common.button.submit" /></html:submit>
</html:form>


</body>
</html>