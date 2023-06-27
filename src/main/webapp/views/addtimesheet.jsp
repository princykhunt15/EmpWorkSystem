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
 
<%@include file="nvemp.jsp"%> 

<script type="text/javascript">

	function val(){
		
		 //alert("By default...");
		 var tle=/^[A-Za-z]$/;
		 
		 if(tle.test(document.getElementById("titleid").value)==false)
		 {
			alert("Enter valid title");
			return false;
		 }
	  window.location.href="/viewtime";
	}
</script>

</head>
<body>
 <%
 String user=(String)session.getAttribute("eid");
 String email=(String)session.getAttribute("user");
%>  
<div class="bg-image" ></div>
<form  onSubmit="return val();" action="add" method="post">
	<!-- <section class="h-100 bg-light" > -->
	<input type="hidden" class="form-control form-control-lg" name="ename" value="<%=user %>" required/>
	<input type="hidden" class="form-control form-control-lg" name="email" value="<%=email %>" required/>
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
                <h3 class="mb-4 text-uppercase">Add TimeSheet</h3><hr>

                <div class="row">
                  <div class="col-md-6 mb-3">
                    <div class="form-outline">
						<div class="input-group mb-3">
						  <select class="custom-select form-control form-control-lg" id="inputGroupSelect02" name="project">
						    <option selected>Choose Project</option>
						    <option value="Employee Management system">Employee Management system</option>
						    <option value="Course Management System">Course Management System</option>
						    <option value="Attendance Management System">Attendance Management System </option>
						  </select> 
						</div>
					</div>
                  </div>
                   <div class="col-md-6 mb-3">
                    <div class="form-outline">
                         <input class="form-control form-control-lg" id="datepicker" width="276" type="date" name="datee"/>
                    </div>
                  </div>
                </div>

                <div class="row">
                  
                  <div class="col-md-5 mb-3">
                    <div class="form-outline">
                      <input type="time" class="form-control form-control-lg" name="start" required/>
                    
                    </div>
                  </div>
                  <div class="col-md-2 mb-3">
                    <div class="form-outline">
                    	 <label class="form-label" for="form3Example1m1" >To</label>
                    </div>
                  </div>
                  <div class="col-md-5 mb-3">
                    <div class="form-outline">
                      <input type="time" class="form-control form-control-lg" name="end" required/>
                     
                    </div>
                  </div>
                </div>
				
				 <div class="form-outline mb-3">
                  <input type="text" id="form3Example97" class="form-control form-control-lg" name="title" id="titleid" placeholder="Enter Title " required/>
                  <label class="form-label" for="form3Example97">Title</label>
                 </div>
                
               
				 <div class="form-outline mb-3 " >
                 <!--  <input type="text" id="form3Example8" class="form-control form-control-lg"  name="address" required/> -->
                  <textarea rows="9" cols="10" id="form3Example8" class="form-control form-control-lg" name="description" required> </textarea>
                  <label class="form-label" for="form3Example8">Description</label>
                  
                 </div>
                
				<hr>
                <div class="d-flex justify-content-end pt-3">
                  <button type="reset" class="btn btn-light btn-lg"  onclick="window.location.href='viewtime';">Back</button>
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
