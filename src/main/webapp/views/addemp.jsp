<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body, html {
  		height: 105%;
	}

	* {
  		box-sizing: border-box;
	}
	/*Background images designing*/
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
	/*Add Emplyee Form designning*/
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
<!-- Validaiton Of the Form -->
<script type="text/javascript">

	function val(){
	 var fn=/^[A-Za-z]{3,15}$/;
	 var ps=/^[a-zA-z0-9@]{5,}$/;
	 var phoneno=/^\d{10}$/;
	 /*Firstname*/
	 if(fn.test(document.getElementById("fname").value)==false)
	 {
		alert("Enter valid Firstname");
		return false;
	 }
	 if(fn.test(document.getElementById("lname").value)==false)
	 {
		alert("Enter valid Lastname");
		return false;
	 }
	 if(fn.test(document.getElementById("fathername").value)==false)
	 {
		alert("Enter valid Fathername");
		return false;
	 }
	  if(ps.test(document.getElementById("password").value)==false)
	 {
		alert("Enter valid password [Length must minimum 5]");
		return false;
	 }
	  
	 if(phoneno.test(document.getElementById("phoneno").value)==false)
	 {
		alert("Enter valid  mobile-number");
		return false;
	 } 
	 window.location.href="homeadmin";
	}
</script>

 <!-- For Header -->
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
<form onSubmit="return val();" action="saveemp" method="post">
	<!-- <section class="h-100 bg-light" > -->
	
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
                <h3 class="mb-4 text-uppercase">Add Employee form</h3><hr>

                <div class="row">
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <input type="text" id="fname" class="form-control form-control-lg" name="fname" required/>
                      <label class="form-label" for="form3Example1m">First Name</label>
                    </div>
                  </div>
                   <div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <input type="text" id="lname" class="form-control form-control-lg" name="lname"required/>
                      <label class="form-label" for="form3Example1n1">Last Name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  
                 
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
                      <input type="password" id="password" class="form-control form-control-lg" name="password" required/>
                      <label class="form-label" for="form3Example1m1" >Passwordd</label>
                    </div>
                  </div>
                  
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
						<div class="input-group mb-3">
						  <select class="custom-select form-control form-control-lg" id="inputGroupSelect02" name="role" >
						   <!--  <option selected>Choose Project</option> -->
						   <option value="Employee">Employee</option>
						    <option value="Admin">Admin</option>
						    						    
						  </select> 
						</div>
					</div>
                  </div>
                  
                </div>
				
				 <div class="form-outline mb-3">
                  <input type="email" id="form3Example97" class="form-control form-control-lg" name="email" required/>
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                
               

                <div class="d-md-flex justify-content-start align-items-center mb-3 py-2">

                  <h6 class="mb-0 me-4">Gender:  </h6>&nbsp;&nbsp;

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                      value="Female" required/>
                    <label class="form-check-label" for="femaleGender"> Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Male" required/>
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="otherGender"
                      value="Other" required/>
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

				 <div class="form-outline mb-3">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="address" required/>
                  <label class="form-label" for="form3Example8">Address</label>
                </div>
                
                <div class="form-outline mb-3">
                  <input type="text" id="phoneno" class="form-control form-control-lg" name="phno" required/>
                  <label class="form-label" for="form3Example9">Phone No</label>
                </div>


               
				<hr>
                <div class="d-flex justify-content-end pt-3">
                  <button type="reset" class="btn btn-light btn-lg"  onclick="window.location.href='viewemp';">Back</button>
                  <button type="submit" class="btn btn-warning btn-lg ms-2" >Submit</button>
                </div>

              </div>
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