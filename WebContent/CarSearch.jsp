<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
 
<html:html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<head>
	<style type="text/css">
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
	</style>
	<script type="text/javascript">
	    function add(){
	        var element1 = document.createElement("input");
	        var element2 = document.createElement("input");
	        var elementCount = parseInt(document.getElementById("count").value);
	
	        var newSelect1=document.createElement('select');
	        var carMakes = ["Select Make..."];
	        <logic:iterate id="element" name="carSearchForm" property="makes" indexId="counter">
	        carMakes.push('<bean:write name="element" />');
	        </logic:iterate>
	        addOption(newSelect1,carMakes);
	        newSelect1.setAttribute("name","make(name"+ elementCount +")");
	        
	        element1.setAttribute("type","text");
	        element1.setAttribute("value","Enter Model Name");
	        element1.setAttribute("name","value(name"+ elementCount +")");
	 
	        element2.setAttribute("type","text");
	        element2.setAttribute("value","Enter High Price");
	        element2.setAttribute("name","value(value"+ elementCount +")");
	 
	        var spanBody = document.getElementById("textBoxes");
	        spanBody.appendChild(element1);
	        spanBody.appendChild(element2);
	        spanBody.appendChild(newSelect1);
	        var breakElement = document.createElement('br');
	        spanBody.appendChild(breakElement);
	         
	        document.getElementById("count").value = elementCount + parseInt(1);
	    }
	    
	    function addOption(newSelect, anArray){
		    for (var i = 0; i < anArray.length; i++) {
		       var opt = document.createElement("option");
		       opt.value= anArray[i];
		       opt.innerHTML = anArray[i]; // whatever property it has
		       newSelect.appendChild(opt);
		    }
	    }
	</script>
	<title>Dynamic Form</title>
	<html:base/>
</head>
<body bgcolor="white">
 
<html:form action="CarSearchSubmit.do" >
	<html:hidden property="count" styleId="count" value="0"/>
	Email To:<html:text property="email"></html:text><br>
	<input type="button" value="Add Search Criteria (+)" onclick="add()"/></br>
	<span id="textBoxes"></span>
 	<html:submit property="submit"> Submit Search</html:submit>
 </html:form>

<hr/>
<html:messages id="msg" name="messages">
	<div class="success">
	    <li><bean:write name="msg" /></li>
	</div>
</html:messages>

</body>
</html:html>