<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<style>
	body, html {
  		height: 95%;
	}

	* {
  		box-sizing: border-box;
	}
	
	.bg-image {
	  /* The image used */
	  background-image: url("../images/bg1.jpg");
	
	  /* Add the blur effect */
	  filter: blur(5px);
	  -webkit-filter: blur(5px);
	
	  /* Full height */
	  height: 100%;
	
	  /* Center and scale the image nicely */
	  background-position: center;
	  background-repeat: no-repeat;
 	  background-size: cover;
	}
	
	.form{
		position: absolute;	
		top: 50%;
		left: 50%;
		transform: translate(-50%, -40%);
		z-index: 2;
		width: 70%;
		padding: 20px;
		text-align: center;
	}
</style>
<meta charset="ISO-8859-1">
<title>Emp_Work Management System</title>
	<%@include file="nvbar.jsp"%>
</head>
<body>
<div class="bg-image" ></div>
 <section class="bg-light form" style="opacity : 55%; width: 90%; height: 40%;">
 	<center><br><br>
	<h1><u>Contact Us</u></h1><br>
		<div>
			<p>Address - 903, I Square Corporate Park | Near Shukan Mall | Science City Road Ahmedabad, Gujarat, India 380060</p>
			<p>Contact - 074054 45554</p>
			<p>Email - info@emergingfive.com</p>
			<p>Website - www.emergingfive.com/</p>
		</div>
		
		
	</center>
 </section>


</center>
</body>
</html>