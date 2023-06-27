package com.mp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mp.service.EmpService;
import com.mp.service.TimesheetService;
import com.mp.entity.Employee;
import com.mp.repository.EmpRepo;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmpController {

	@Autowired
	private EmpService service;
	/*
	 * --------- CONTROLLER --------------
	 * MainController (Home | Aboutus | contactus | LOGIN-LOGOUT)
	 * AdminController (Home | AddEmployee | ViewEmployee | ViewTimeSheet )
	 * EmpController (Home | AddTimesheet  )
	 * TimeSheetController ( AddTimeSheet | ViewtimeSheet )
	 * */
	
		//Employee Controller
	 
	
		//Home page (Employee User Side)
		@GetMapping("/homeemp")
		public String homeemp() {
			 	
			return "homeemp";
		}
		
		
		//Add TimeSheet Page
		@GetMapping("/addtimesheet")
		public String addtimesheet(HttpSession session) {
			 	
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				return "login2";
			}
			System.out.println(user);
			return "addtimesheet";
		}
		
		
		
		
}
