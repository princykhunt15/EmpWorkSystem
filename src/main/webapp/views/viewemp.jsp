<%@page import="com.mp.entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Emp_Work Management System</title>
<style>
	body, html {
  		height: 105%;
	}

	* {
  		box-sizing: border-box;
	}
	
	.bg-image {
	  /* The image used */
	  background-image: url("../images/bga2.avif");
	
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
	
	.form{
		position: absolute;	
		top: 50%;
		left: 50%;
		transform: translate(-50%, -40%);
		z-index: 2;
		width: 70%;
		padding: 20px;
		text-align: center;	
		font-size: 18px;
	}
</style>
<%@include file="nvadmin.jsp"%>
</head>
<body>

<div class="bg-image" >
</div>


    <div style="position: relative; bottom:850px; align-items: center" align="right">
      <button class="btn btn-outline-dark btn-block btn-lg my-2 mr-sm-0 pl-4 pr-4" type="submit" onclick="window.location.href='/addemp';">AddEmp</button>
    </div> 
    <c:if test="${emp.size()==0}">
                            <h2>No record found !!</h2>
</c:if>
   <c:if test="${emp.size() gt 0 }"> 
<div class="container p-5 form" >

	<table class="table table-striped tbl">
	  <thead class="bg-dark text-light">
	    <tr>
	      
	      <th scope="col">FirstName</th>
	      <th scope="col">LastName</th>
	      <th scope="col">Password</th>
	      <th scope="col">Role</th>
	      <th scope="col">Email</th>
	      <th scope="col">gender</th>
	      <th scope="col">Address</th>
	      <th scope="col">Phone No</th>
	      <th scope="col" class="text-center" colspan="2">Action</th> 
	    </tr>
	  </thead>
	  <tbody>
	 <c:forEach var="emp" items="${emp}">
	    <tr>
	      
	      <td > ${emp.fname}</td>
	     
	      <td >${emp.lname}</td>
	      <td >${emp.password}</td>
	       <td >${emp.role}</td>
	      <td> ${emp.email}</td>
	      <td>${emp.gender}</td>
	      <td >${emp.address}</td>	     
	      <td >${emp.phno}</td>
	      
	 
	      
	      <td><a class="btn btn-sm btn-primary" href='/update/${emp.id}'>Edit</a></td>
	      <td><a class="btn btn-sm btn-danger" href='/delete/${emp.id}' onclick="return confirm('Are you sure for Delete..?')">Delete</a></td>
	       
	
	    </tr>
	  </c:forEach>
	  </tbody> 
	</table>
	</div> 
	</c:if>
</body>
</html>
