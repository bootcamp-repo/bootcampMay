<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<!-- you should always add your stylesheet (css) in the head tag so that it starts loading before the page html is being displayed -->	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/mycss.css" type="text/css" />

</head>
<body>
	<div >
		<header>
		<logo>BootCamp Java</logo>
		<login>
			<ul>
				<li><a href="Jsp/login.jsp">Sign-In</a></li>
				<li>/</li>
				<li><a href="Jsp/register.jsp">REGISTER</a></li>
			</ul>
		</login>
		</header>
	<div class="top">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="Jsp/Books.jsp">Books</a></li>
			<li><a href="Jsp/computers.jsp">Computers</a></li>
			<li><a href="Jsp/phone.jsp">Phones</a></li>
		</ul>
	</div>
		<div class="mid">
			<div class="medium_box">
				<h4>Registration Successful</h2>
				<h3>Welcome <% out.println(request.getAttribute("user"));%></h3>
				<h3>Thank you for creating account with us.</h3>
				
				<h3> please Sign-in <h3>
				
				<form action="login1" method="post">				
				<p><input type="text" size="22"  name="Email" placeholder="Email" required ><br>
				<input type="password" size="22"  name="password" placeholder="Password" required><br>
				<input type="checkbox" name="Sign-in" value="Sign">Keep me signed in <br>
				<blue_char>forget your password</blue_char></p>
				<input class="signin_button" type="submit" value="Sign In">
				</p>
				<p><br></p>
				</form>					
								
			
			</div>
		</div>
	</div>
	<div class="bottom">
		<contact>
			<h3> Contact Us</h3>
			Telephone: 361-355-5056 <br>
			e-mail: vikasmovva@gmail.com <br>
			Mailing Address: <br>
			234567891 belt highway <br>
			Dallas,Tx -33435
		</contact>
		<legal>
			<h3>Terms of use:</h3>
			<p>Copyright � 2015 vikas movva. All Rights Reserved.</p>
			You are prohibited from modifying, adapting, translation, reverse engineering, decompiling or disassembling any portion of the Site.The information included on this website is provided without charge as a user convenience and is to be used for informational purposes only.<br>
				
		</legal>	
	</div>		
</body>
</html>