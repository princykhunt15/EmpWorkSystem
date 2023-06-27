
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
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
	}
</style>
<meta charset="ISO-8859-1">
<title>Emp_Work Management System</title>
<%@include file="nvadmin.jsp"%> 


</head>
<body>
<%-- <%
	String usernm=(String)session.getAttribute("user");
	out.println(usernm);
	if(usernm.equals(null)){
		response.sendRedirect("login");
	}
%> --%>
<div class="bg-image" ></div>

<%-- <form onSubmit="return val();" action="/register" method="post" > --%>
	 <form:form action="/saveemp" method="post" modelAttribute="command">
	<form:hidden path="id" />
  <div class="container py-5 h-100 form" >
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body text-black mr-3">
                <h3 class="mb-4 text-uppercase">Edit Employee form</h3><hr>
	
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <form:input type="text" id="fname" class="form-control form-control-lg" path="fname"  />
                      <label class="form-label" for="form3Example1m">First Name</label>
                    </div>
                  </div>
				<div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <form:input type="text" id="lname" class="form-control form-control-lg" path="lname" />
                      <label class="form-label" for="form3Example1n1">Last Name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  
                 <div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <form:input type="password" id="password" class="form-control form-control-lg" path="password" />
                      <label class="form-label" for="form3Example1m1" >Password</label>
                    </div>
                  </div>
                  
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
						<div class="input-group mb-3">
						  <form:select class="custom-select form-control form-control-lg" id="inputGroupSelect02" path="role">
						    
						    <option value="Employee">Employee</option>
						    <option value="Admin">Admin</option>
						    
						  </form:select> 
						</div>
					</div>
                  </div>
                  
                </div>
				
				 <div class="form-outline mb-3">
                  <form:input type="email" id="form3Example97" class="form-control form-control-lg" path="email"  />
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                
               

                <div class="d-md-flex justify-content-start align-items-center mb-3 py-2">

                  <h6 class="mb-0 me-4">Gender:  </h6>&nbsp;&nbsp;

                  <div class="form-check form-check-inline mb-0 me-4">
                    <form:radiobutton class="form-check-input"  path="gender" id="femaleGender" value="Female"/>
                    <label class="form-check-label" for="femaleGender"> Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <form:radiobutton class="form-check-input"  path="gender" id="maleGender" value="male"
                      />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <form:radiobutton class="form-check-input"  path="gender" id="otherGender" value="other"
                    />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

				 <div class="form-outline mb-3">
                  <form:input type="text" id="form3Example8" class="form-control form-control-lg" path="address"  />
                  <label class="form-label" for="form3Example8">Address</label>
                </div>
                
                <div class="form-outline mb-3">
                  <form:input type="text" id="phoneno" class="form-control form-control-lg" path="phno"  />
                  <label class="form-label" for="form3Example9">Phone No</label>
                </div>


               
				<hr>
                <div class="d-flex justify-content-end pt-3">
                  <button type="reset" class="btn btn-light btn-lg"  onclick="window.location.href='/viewemp';">Back</button>
                  <button type="submit" class="btn btn-warning btn-lg ms-2" >Submit</button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 
</form:form>
</body>
</html>