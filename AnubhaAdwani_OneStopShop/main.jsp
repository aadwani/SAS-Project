<%-- 
    Document   : main
    Created on : Apr 24, 2017, 8:08:01 PM
    Author     : anubhaadwani
--%>
<html>
<head>
	<meta charset="UTF-8">
	<title>One Stop Shop</title>
	<link rel="stylesheet" href="styles/style.css" type="text/css">
</head>
<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="logo">
					<a href="main.jsp"><img src="images/onestopshop.png" alt="LOGO" height="112" width="118"></a>
                                        <h1>One Stop Shop</h1>
				</div>
				<div id="navigation">
					<ul>
						<li class="selected">
							<a href="main.jsp">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="foods.html">Food</a>
						</li>
						
						<li>
							<a href="login.jsp">Sign In</a>
						</li>
						<li>
							<a href="registration.jsp">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div id="adbox">
					<img src="images/foodfront.jpg" alt="Img">
                                        <%--<h1>Login here</h1>                               
       <form action="login" method="post">
                                       <pre>
    <input type="text" name="email" placeholder="email"/>

    <select name="bhu">
    
    <option value="student">Student</option>
    <option value="admin">admin</option>
    
    
    </select>

    <input type="password"  name="pass" placeholder="password"/>

     <input type="submit"  value="Login"/>
</pre>	 
                                        
                                        
</form> --%>
 				
                 <div id="footer">
			<div>
				<ul class="navigation">
					<li  class="active">
							<a href="main.jsp">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="foods.html">Food</a>
						</li>
						
						<li>
							<a href="login.jsp">Sign In</a>
						</li>
						<li>
							<a href="registration.jsp">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
				</ul>
			</div>
			<p>
				© 2017 One Stop Shop. All Rights Reserved
			</p>
		</div>
	</div>
</body>
</html>