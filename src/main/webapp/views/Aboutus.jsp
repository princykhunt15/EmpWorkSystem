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
 <section class="bg-light form" style="opacity : 60%; width: 50%; height: 55%;">
 	<center><br><br>
	<h1><u>About Us</u></h1><br>
	<div class="border border-secondary border-5"></div><br>
	<p>
	Emerging Five is growing IT consultancy and service organizations providing dedicated on-shore/off-shore development resources and complete IT solutions to its clients.

	</p><p>Since its inception, Emerging Five has been committed to delivering business value through IT - be it through consulting services, technology services, enterprise mobility, managed services or a range of software products for the advertising & communications sector.

	</p><p>We are large enough to be resourceful and small enough to be flexible and a highly adaptable IT services company. 
	
	</p>
	
 </section>
 


</center>
</body>
</html>