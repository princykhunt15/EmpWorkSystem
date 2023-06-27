<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<style>
		body, html {
	  		height: 105%;
		}
	
		* {
	  		box-sizing: border-box;
		}
		/*background images*/
		.bg-image {
		  /* The image used */
		  background-image: url("../images/bg2.jpg");
		
		  /* Add the blur effect */
		  filter: blur(8px);
		  -webkit-filter: blur(8px);
		
		  /* Full height */
		  height: 100%;
		
		  /* Center and scale the image nicely */
		  background-position: center;
		  background-repeat: no-repeat;
	 	  background-size: cover;
		}
		/*form designing*/
		.form1{
			position: absolute;	
			top: 65%;
			left: 50%;
			transform: translate(-50%, -40%);
			z-index: 2;
			width: 70%;
			padding: 20px;
			text-align: center;
			font-size: 18px;
		}	
		 .search{
			position: absolute;
			top: 25%;
			left: 50%;
			transform: translate(-50%, -40%);
			width: 70%;
			padding: 20px;
			text-align: center;
			font-size: 18px;
		
			
		.mask-custom {
			  background: rgba(24, 24, 16, .2);
			  border-radius: 2em;
			  backdrop-filter: blur(15px);
			  border: 2px solid rgba(255, 255, 255, 0.05);
			  background-clip: padding-box;
			  box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
			} 
			
	</style>
	<meta charset="ISO-8859-1">
	<title>Emp_Work Management System</title>
	 
	<%@include file="nvemp.jsp"%> 
</head>
<body>
   
	<div class="bg-image" ></div>
	
	<div style="position: relative; bottom:920px; align-items: center" align="right">
		<button class="btn btn-info btn-block btn-lg  my-2 mr-sm-0 pl-4 pr-4" type="submit" onclick="window.location.href='addtimesheet';">AddTimeSheet</button>   
	</div>
	
	
	<c:if test="${timesheet.size()==0}">
	    <h2>No record found !!</h2>
	</c:if>
	<c:if test="${timesheet.size() gt 0 }"> 
	
		 <div class="container p-5 form1" >
		
				<table class="table table-striped">
				  <thead class="bg-dark text-light">
					    <tr>
					      
						      <th scope="col">Project</th>
						      <th scope="col">Date</th>
						      <th scope="col">StartTime</th>
						      <th scope="col">EndTime</th>
						      <th scope="col">Title</th>
						      <th scope="col">Description</th>
						      <th scope="col">Ename</th>
						      <th scope="col">Email</th>
						      <th scope="col" colspan="2">Action</th>
					      
					    </tr>
				  </thead>
				  <tbody>
					  <c:forEach var="ts" items="${timesheet}">
						   <tr>
							      <th>${ts.project}</th>
							      <td > ${ts.datee}</td>
							      <td >${ts.start}</td>
							      <td >${ts.end}</td>
							      <td >${ts.title}</td>
							      <td> ${ts.description}</td>
							      <td>${ts.ename}</td>
							      <td>${ts.email}</td>   
							
						
							      <td><a class="btn btn-sm btn-primary" href='/updatetimesheet/${ts.id}'>Edit</a></td>
							      <td><a class="btn btn-sm btn-danger" href='/deletetimesheet/${ts.id}' onclick="return confirm('Are you sure for Delete..?')">Delete</a></td>
							       
						    </tr>
					  </c:forEach>
				  </tbody> 
				</table>
			</div> 
		</c:if>
	 	
		<form method="post" action="/viewtime" > 
	 		<section class="intro">
	 
		    <div class="mask d-flex align-items-center h-100 ">
		      <div class="container search">
		        <div class="card mask-custom p-4">
		          <div class="card-body">
		           <!--  <p class="h1 font-weight-bold mb-4 text-black">Discover the Amazing City</p> -->
		            <div class="row justify-content-center">
		              <div class="col-md-6 mb-3 mb-md-0">
		                <div id="basic" class="form-outline form-white">
		                 <select class="custom-select form-control form-control-lg" id="inputGroupSelect02" name="project">
								<option selected>Choose Project</option>
							    <option value="Employee Management system">Employee Management system</option>
							    <option value="Course Management System">Course Management System</option>
							    <option value="Attendance Management System">Attendance Management System </option>
						</select>
						
		                </div>
		              </div>
	              
	              
	 
	        <div class="col-md-4 mb-3 mb-md-0">
	              <div id="location" class="form-outline form-white">
	                 <input type="text" id="form2" class="form-control form-control-lg" placeholder="Enter Title" name="title"/>
	              </div>
	         </div>
	              
	              
	         <div class="col-md-2">
	             <input class="btn btn-info btn-block btn-lg" type="submit" value="Search" />
	   		</div>
	 
	
	                 
	 
	            </div>
	          </div>
	        </div>
	      </div>
	 </div>
	 
	</section>
	</form>
		
</body>
</html>
