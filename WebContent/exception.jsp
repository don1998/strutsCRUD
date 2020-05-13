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


</style>
</head>
<body>

<div class="alert-box error"><span>error: </span><html:errors/></div>
 
</body>
</html>