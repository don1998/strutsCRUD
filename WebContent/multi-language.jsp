<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Egov Demo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Sign in <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
    </ul>
  </div>
</nav>
<h1><bean:message key="label.common.message" /></h1>

<html:messages id="err_name" property="common.username.err">
<div style="color:red">

		<div style="color:red">
	<div class="alert alert-danger" role="alert">
	<bean:write name="err_name" />
</div>
</div>
</html:messages>

<html:messages id="err_password" property="common.password.err">
<div style="color:red">
	<div style="color:red">
	<div class="alert alert-danger" role="alert">
<bean:write name="err_password" />
</div>
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
<br />
<button type="submit" class="btn btn-primary"><bean:message key="label.common.button.submit" /></button>
</html:form>


</body>
</html>