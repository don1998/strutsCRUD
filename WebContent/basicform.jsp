<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>

<body>

    <jsp:useBean id="user" scope="request" class="com.crudDemo.app.model.User"></jsp:useBean>
    <h1>Find Items</h1>

    <form action="/ExampleFormServlet" method="get">
        Name: <input type="text" name="userName" value="<jsp:getProperty name="user" property="name" />"/><br>
        Password: <input type="text" name="userPass" value="<jsp:getProperty name="user" property="password" />"/><br>
        <input type="submit" value="submit" />
    </form>

</body>

</html>