package com.mp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mp.entity.Employee;
import com.mp.repository.EmpRepo;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	/*
	 * --------- CONTROLLER --------------
	 * MainController (Home | Aboutus | contactus | LOGIN-LOGOUT)
	 * AdminController (Home | AddEmployee | ViewEmployee | ViewTimeSheet )
	 * EmpController (Home | AddTimesheet  )
	 * TimeSheetController ( AddTimeSheet | ViewtimeSheet )
	 * */
	
	
	
	
	@Autowired
	//Repository Object
	private EmpRepo repo;

	//Home (Main) page
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	//Navbar Main
	@GetMapping("nvbar")
	public String navbar() {
		return "nvbar";
	}
	
	//AboutUs Page
	@GetMapping("aboutus")
	public String aboutus() {
		return "Aboutus";
	}
	
	//ContactUs Page
	@GetMapping("contactus")
	public String contactus() {
		return "contactus";
	}
	
	
	/********** LOGIN-LOGOUT ACTIVITY **********/
	
	//Login Form
	@GetMapping("/login2")
	public String login2() {
		return "login2";
	}
	
	//After enter Email and Password Handle (Admin | Employee )
	@PostMapping("/login2")
	public String homeadmin(@ModelAttribute("emp") Employee emp,HttpSession session) {
		String email = emp.getEmail(); 
		String password = emp.getPassword();
		session.setAttribute("user", emp.getEmail());
		Employee Email = repo.findByEmail(email);
		 
		 if(Email == null) {
			 return "login2";
		 }
		 if(emp.getEmail().equals(Email.getEmail()) && emp.getPassword().equals(Email.getPassword())) 
		  {
			  session.setAttribute("eid", Email.getFname());
			  if(Email.getRole().equals("Employee"))
			  {
				  return "homeemp"; 
			  }
			  else if(Email.getRole().equals("Admin"))
			  {	
				  return "homeadmin"; 
			  }
			  else
			  {
				  return "login2";
			  }
		  }
		  else {
			  return "login2";
		  }
	
		
	}
	
	
	//Logout 
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	

	
}
