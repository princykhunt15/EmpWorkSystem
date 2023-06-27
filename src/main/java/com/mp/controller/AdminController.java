package com.mp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.mp.entity.Employee;
import com.mp.entity.TimeSheet;
import com.mp.repository.EmpRepo;
import com.mp.service.EmpService;
import com.mp.service.TimesheetService;


import jakarta.servlet.http.HttpSession;


@Controller
public class AdminController {

	@Autowired
	private EmpService service;
	@Autowired
	private EmpRepo repo;
	@Autowired
	private TimesheetService tservice;
/*
	 * --------- CONTROLLER --------------
	 * MainController (Home | Aboutus | contactus | LOGIN-LOGOUT)
	 * AdminController (Home | AddEmployee | ViewEmployee | ViewTimeSheet )
	 * EmpController (Home | AddTimesheet  )
	 * TimeSheetController ( AddTimeSheet | ViewtimeSheet )
	 * */
	
	
	//Admin Controller
	
		//Home (Admin Page)

		@GetMapping("/homeadmin")
		public String homeaadmin(HttpSession session) {
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				return "login2";
			}
			return "homeadmin";
		}

		
		
		@GetMapping("/viewemp")
		public ModelAndView getAllEmp(HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}
			ModelAndView mav=new ModelAndView("viewemp");
			List<Employee> list= service.getAllEmp();
			mav.addObject("emp",list);
			return mav;
		}
		/*
		@GetMapping("/viewemp")
		public ModelAndView getAllEmp(@ModelAttribute("ts") Employee e,HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}
			ModelAndView mav=new ModelAndView("viewemp");
			List<Employee> list= repo.findByRole("Employee");
			mav.addObject("emp",list);
			return mav;
		}*/
				
		@GetMapping("/addemp")
		public ModelAndView addemp(HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}

			ModelAndView mav=new ModelAndView("addemp");
			mav.addObject("command",new Employee());
			return mav;
		}
		@PostMapping("/saveemp")
		public String saveemp(@ModelAttribute Employee em)
		{
			service.saveEmp(em);
			return "redirect:/viewemp";
		}
		@GetMapping("/update/{id}")
		public ModelAndView getEmp(@PathVariable("id") Integer id ,HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}

			ModelAndView mav=new ModelAndView("editemp");
			Employee employee=service.getById(id);
			mav.addObject("command",employee);
			return mav;
		}
		@GetMapping("/delete/{id}")
		public String deleteEmp(@PathVariable("id") Integer id,HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				return "login2";
			}
			Employee delmovie=service.getById(id);
			service.deleteEmp(delmovie);
			return "redirect:/viewemp";
		}

}
