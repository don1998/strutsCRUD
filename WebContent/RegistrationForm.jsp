<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css" >
        body { 
	background: #FDFDFD; 
}
body, input, textarea { 
	font: 14px/24px Helvetica, Arial, sans-serif; 
	color: #666; 
}
input { 
	width: 60% 
}
form { 
	margin: 30px 0 0 0 
}
input, textarea { 
	background: none repeat scroll 0 0 #FFFFFF; 
	border: 1px solid #C9C9C9; 
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset, -5px -5px 0 0 #F5F5F6, 5px 5px 0 0 #F5F5F6, 5px 0 0 0 #F5F5F6, 0 5px 0 0 #F5F5F6, 5px -5px 0 0 #F5F5F6, -5px 5px 0 0 #F5F5F6; 
	color: #545658; 
	padding: 8px; 
	font-size: 14px; 
	border-radius: 2px 2px 2px 2px; 
}
#submit { 
	background: url("submit_bg.gif") repeat-x scroll 0 0 transparent; 
	border: 1px solid #B7D6DF; 
	border-radius: 2px 2px 2px 2px; 
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1); 
	color: #437182; 
	cursor: pointer; 
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; 
	font-size: 14px;
	font-weight: bold; 
	height: auto; 
	padding: 6px 10px; 
	text-shadow: 0 1px 0 #FFFFFF; 
	width: auto; 
}
#submit:hover { 
	background: url("submit_hover_bg.gif") repeat-x scroll 0 0 transparent; 
	border: 1px solid #9FBAC0; 
	cursor: pointer; 
}
a { 
	color: #88BBC8; 
	text-decoration: none; 
}
a:hover { 
	color: #f26525 
}
#signup-form { 
	width: 510px; 
	margin: 0 auto; 
	margin-top: 50px; 
	margin-bottom: 50px; 
	background: #fff; 
	padding: 40px; 
	border: 10px solid #f2f2f2; 
}
#signup-icon { 
	float: right; 
	width: 48px; 
	height: 48px; 
}
h1, h2, h3, h4, h5, h6 { 
	margin: 0; 
	padding: 0; 
	color: #444; 
}
h1 { 
	float: left; 
	margin: 0 0 30px; 
	font-size: 24px; 
	line-height: 34px; 
}
h2.secondary { 
	float: left; 
	width: 260px; 
	font-size: 16px; 
	font-weight: normal; 
	color: #999; 
	margin-bottom: 30px; 
	line-height: 26px; 
}
h3 { 
	margin: 30px 0 0 0 
}
.clearfix:after { 
	content: "."; 
	display: block; 
	height: 0; 
	clear: both; 
	visibility: hidden; 
}
.clearfix { 
	display: inline-block 
} /* Hide from IE Mac \*/
.clearfix { 
	display: block; 
} /* End hide from IE Mac */
.none { 
	display: none; 
} /* End Clearfix _NO__DOTCOMMA__AFTER__*/

#header { 
	margin: 0 0 30px 0; 
	border-bottom: 1px solid #efefef; 
}
#send p { 
	margin-bottom: 20px 
}
textarea { 
	width: 95%; 
	margin: 0 0 0 2px; 
}
#required p{
	font-size:10px;
}
#apply { 
	border-top: 1px solid #efefef; 
	margin-top: 30px; 
	padding: 20px 0 0 0; 
}
#apply ul { 
	margin-bottom: 50px 
}
form label { 
	display: block; 
	margin-bottom: 5px; 
	font-weight: bold; 
	font-size: 12px; 
}
    </style>
</head>
<body>

 <!--BEGIN #signup-form -->
    <div id="signup-form">
        
        <!--BEGIN #subscribe-inner -->
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		<img id="signup-icon" src="signup.png" alt="" />
        
                <h1>Sign up to yourCompany.com <br/> FREE Today!</h1>

            
            </div>
			<p>Please complete the fields below, ensuring you use a valid email address as you will be sent a validation code which you will need the first time you login to the site.</p>

            
            <form id="send" action="">
            	
            	 <p>

                <label for="name">Your Name *</label>
                <input id="name" type="text" name="name" value="" />
                </p>
            	
                <p>

                <label for="name">Password *</label>
                <input id="name" type="password" name="password" value="" />
                </p>
                
                <p>
                <label for="company">Company Name</label>
                <input id="company" type="text" name="company" value="" />
                </p>
                
                <p>

                <label for="email">Email *</label>
                <input id="email" type="text" name="email" value="" />
                </p>
                
                <p>
                <label for="website">Website</label>
                <input id="website" type="text" name="website" value="http://" />
                </p>
                
                <p>

                <label for="phone">Phone</label>
                <input id="phone" type="text" name="phone" value="" />
                </p>
                
                <p>

                <label for="phone">Mobile Phone</label>
                <input id="phone" type="text" name="phone" value="" />
                </p>
                
                <p>
                <label for="country">Country</label>
                <input id="Country" type="text" name="country" value="" />
                </p>
                
                
                <p>
                <label for="profile">Tell us about yourself *</label>
                <textarea name="profile" id="profile" cols="30" rows="10"></textarea>

                </p>
                
                <p>

                <button id="submit" type="submit">Submit</button>
                </p>
                
            </form>
            
		<div id="required">
		<p>* Required Fields<br/>
		NOTE: You must activate your account after sign up</p>
		</div>


            </div>
        
        <!--END #signup-inner -->
        </div>
        
    <!--END #signup-form -->   
    </div>

</body>
</html>