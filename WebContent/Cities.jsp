<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AJAX Search</title>
<script language="javascript">
/*
* Returns an new XMLHttpRequest object, or false if the browser
* doesn't support it
*/
var availableSelectList;

	function newXMLHttpRequest() {
	    var xmlreq = false;
	    
	    // Create XMLHttpRequest object in non-Microsoft browsers
	    if (window.XMLHttpRequest) {
	        xmlreq = new XMLHttpRequest();
	    } else if (window.ActiveXObject) {
	        try {
	            // Try to create XMLHttpRequest in later versions
	            xmlreq = new ActiveXObject("Msxml2.XMLHTTP");
	        } catch (e1) {
	            // Failed to create required ActiveXObject
	            try {
	                // Try version supported by older versions
	                // of Internet Explorer
	                xmlreq = new ActiveXObject("Microsoft.XMLHTTP");
	            } catch (e2) {
	                // Unable to create an XMLHttpRequest by any means
	                xmlreq = false;
	            }
	        }
	    }
	    return xmlreq;
	}
    /*
     * Returns a function that waits for the specified XMLHttpRequest
     * to complete, then passes it XML response to the given handler function.
     * req - The XMLHttpRequest whose state is changing
     * responseXmlHandler - Function to pass the XML response to
     */

    function getReadyStateHandler(req, responseXmlHandler) {
        // Return an anonymous function that listens to the XMLHttpRequest instance
        return function () {
            // If the request's status is "complete"
            if (req.readyState == 4) {
                // Check that we received a successful response from the server
                if (req.status == 200) {
                    // Pass the XML payload of the response to the handler function.
                    responseXmlHandler(req.responseXML);
                } else {
                    // An HTTP problem has occurred
                    alert("HTTP error " + req.status + ": " + req.statusText);
                }
            }
        };
    } 

    function search(searchKey) {
        var form = document.forms[0];
        var keyValue = document.getElementById("getCities").value;
        keyValue = keyValue.replace("/^\s*|\s*$/g", "");
        if (keyValue.length > 0) {
            availableSelectList = document.getElementById("searchResult");
            var req = newXMLHttpRequest();
            req.onreadystatechange = getReadyStateHandler(req, update);
            req.open("POST", "<%=request.getContextPath()%>/searchCity.do", true);
            req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            req.send("getCities=" + keyValue);
        }
    }

    function update(cartXML) {
        var cities = cartXML.getElementsByTagName("cities")[0];
        var city = cities.getElementsByTagName("city");
        availableSelectList.innerHTML = '';
        for (var i = 0; i < city.length; i++) {
            var ndValue = city[i].firstChild.nodeValue;
            availableSelectList.innerHTML += ndValue + "\n" + "<br>";
        }
    }

    function searchByCity() {
        var form = document.forms[0];
        alert("This gets the city names");
    }
</script>
</head>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<body>

<form action="searchCity" id="searchByCityForm">
	<table border="0" cellpadding="3" cellspacing="0" width="100%">
		<tr>
		</tr>
		<tr>
			<td class="promo">
				<table border="0" cellpadding="3" cellspacing="0">
					<tr>
						<td valign="top">
						<input type="textbox" id="getCities" size="20" onKeyUp="search(this);" style="width: 300px;" autocomplete="on">
							<div align="left" id="searchResult" style="width: 300px; border: #000000;"></div> 
							<a href="javascript:searchByCity();"> SEARCH </a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
