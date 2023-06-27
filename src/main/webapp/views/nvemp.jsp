<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>home page</title>
  </head>

<body>
	 <%
 	String eid=(String)session.getAttribute("eid");
	//out.println(eid);
	/* if(usernm.equals(null)){
		response.sendRedirect("login");
	} */
	%>  
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
		<img src="../images/logo1.png" width="120" height="80" class="d-inline-block align-top" alt="">
	
	  	<a class="navbar-brand" href="#"><h3>EMPLOYEE SYSTEM</h3></a>
	  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	  			  <span class="navbar-toggler-icon"></span>
	 		 </button>
		<h5>
	  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
				      <li class="nav-item ">
				        <a class="nav-link" href="homeemp">Home <span class="sr-only">(current)</span></a>
				      </li>
				  <!--     <li class="nav-item">
					    <a class="nav-link" href="addtimesheet">Add Timesheet</a>
					  </li> -->
					  
					  <li class="nav-item">
					     <a class="nav-link" href="viewtime">Timesheet</a>
					  </li>
					  			      
			     
			    </ul>
		    <div style="position: relative; left: 970px;">
		      <button class="btn btn-outline-light my-2 mr-sm-0 pl-4 pr-4" type="submit" onclick="window.location.href='logout';" onclick="return confirm('Are you sure for Logout..?')">Logout</button>
		    </div> 
	  </div>
	  </h5>
	</nav>
<!-- navbar -->


</body>
</html>