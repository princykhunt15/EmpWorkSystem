package com.mp.controller;

import java.util.List;
import java.util.*;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mp.entity.Employee;
import com.mp.entity.TimeSheet;
import com.mp.repository.TimesheetRepo;
import com.mp.service.TimesheetService;

import jakarta.servlet.http.HttpSession;

import java.sql.Date;


@Controller
public class TimeSheetController {
	/*
	 * --------- CONTROLLER --------------
	 * MainController (Home | Aboutus | contactus | LOGIN-LOGOUT)
	 * AdminController (Home | AddEmployee | ViewEmployee | ViewTimeSheet )
	 * EmpController (Home | AddTimesheet  )
	 * TimeSheetController ( AddTimeSheet | ViewtimeSheet )
	 * */
	
	
	//TimeSheetController
	@Autowired
	private TimesheetService service;
	@Autowired
	private TimesheetRepo repo;
	
	//Add TimeSheet of Employee
	@PostMapping("/add")
	public String addtime(TimeSheet ts,HttpSession session) {
		String user=(String)session.getAttribute("user");
		if(user == null ) {
			return "login2";
		}
		service.addtimesheet(ts);
		return "redirect:/viewtime";
	}
	
	//View TimeSheet && get All timesheet
	@GetMapping("/viewtime")
	public ModelAndView getAlltimesheet(HttpSession session) {
		String user=(String)session.getAttribute("user");
		System.out.println("email:::" + user);
		if(user == null ) {
			ModelAndView mav=new ModelAndView("login2");
			return mav;
		}
		ModelAndView mav = new ModelAndView("viewtimesheet");
		List<TimeSheet> emaillist =repo.findByEmail(user);
		
		//List<TimeSheet> list = service.getAllTime();
		mav.addObject("timesheet", emaillist);
		return mav;
	}
	
	//While Search && get TimeSheet depend on Search Criteria
	/*@PostMapping("/viewtime")
	public ModelAndView viewBySearch(@ModelAttribute("ts") TimeSheet ts,HttpSession session) {
		
		
		String user=(String)session.getAttribute("user");
		if(user == null ) {
		  ModelAndView mav=new ModelAndView("login2"); 
		  return mav; 
		}
		 
		ModelAndView mav = new ModelAndView("viewtimesheet");
		String project=ts.getProject();
		String ename=ts.getEmail();
		
		if( (ename == "") && (project.equals("Choose Project")) ){
			List<TimeSheet> emaillist =repo.findByEmail(user);
			mav.addObject("timesheet", emaillist);
			return mav;
		}
		else if(ename == "")
		{
			List<TimeSheet> list = repo.findByProject(project);
			mav.addObject("timesheet", list);
			
		}else if(project.equals("Choose Project")) {
			List<TimeSheet> list = repo.findByEmail(ename);
			mav.addObject("timesheet", list);
			
		}else {
			List<TimeSheet> list = repo.findByProjectAndEmail(project,ename);
			
			mav.addObject("timesheet",list);
			
		}
		
		
		return mav;
	
	}*/
	@PostMapping("/viewtime")
	public ModelAndView viewBySearch(@ModelAttribute("ts") TimeSheet ts,HttpSession session) {
		
		
		String user=(String)session.getAttribute("user");
		if(user == null ) {
		  ModelAndView mav=new ModelAndView("login2"); 
		  return mav; 
		}
		 
		ModelAndView mav = new ModelAndView("viewtimesheet");
		String project=ts.getProject();
		String ename=ts.getEmail();
		String title=ts.getTitle();
		
		if( (title == "") && (project.equals("Choose Project")) ){
			List<TimeSheet> emaillist =repo.findByEmail(user);
			mav.addObject("timesheet", emaillist);
			return mav;
		}
		else if(title == "")
		{
			List<TimeSheet> list = repo.findByProject(project);
			mav.addObject("timesheet", list);
			
		}else if(project.equals("Choose Project")) {
			List<TimeSheet> list = repo.findByTitle(title);
			mav.addObject("timesheet", list);
			
		}else {
			List<TimeSheet> list = repo.findByProjectAndTitle(project,title);
			
			mav.addObject("timesheet",list);
			
		}
		
		
		return mav;
	
	}
	
	//Delete TimeSheet
	@GetMapping("/deletetimesheet/{id}")
	public String deleteEmp(@PathVariable("id") Integer id,HttpSession session)
	{
		String user=(String)session.getAttribute("user");
		if(user == null ) {
			
			return "login2";
		}
		TimeSheet deletetimeSheet=service.getById(id);
		service.deleteTimesheet(deletetimeSheet);
		return "redirect:/viewtime";
	}
	
	
	//Update TimeSheet
	@GetMapping("/updatetimesheet/{id}")
	public ModelAndView updatetimesheet(@PathVariable("id") Integer id,HttpSession session)
	{
		String user=(String)session.getAttribute("user");
		if(user == null ) {
			ModelAndView mav=new ModelAndView("login2");
			return mav;
		}
		ModelAndView mav=new ModelAndView("edittimesheet");
		TimeSheet timesheet=service.getById(id);
		mav.addObject("command",timesheet);
		return mav;
	}
	
	@PostMapping("/savetimesheet")
	public String saveTimeSheet(@ModelAttribute TimeSheet ts)
	{
		service.saveTimeSheet(ts);
		return "redirect:/viewtime";
	}
	
	//Admin Timeshet
	
	//View TimeSheet && get All timesheet
		@GetMapping("/viewtimead")
		public ModelAndView getAlltimesheetAdmin(HttpSession session) {
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}
			ModelAndView mav = new ModelAndView("viewadmintime");
			List<TimeSheet> list = service.getAllTime();
			mav.addObject("timesheet", list);
			return mav;
		}
		
		//While Search && get TimeSheet depend on Search Criteria
		@PostMapping("/viewtimead")
		public ModelAndView viewBySearchAdmin(@ModelAttribute("ts") TimeSheet ts,HttpSession session) {
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				ModelAndView mav=new ModelAndView("login2");
				return mav;
			}
			ModelAndView mav = new ModelAndView("viewadmintime");
			String project=ts.getProject();
			String ename=ts.getEmail();
			//String date=ts.getDatee().toString();
			if( (ename == "") && (project.equals("Choose Project")) ){
				List<TimeSheet> list = service.getAllTime();
				mav.addObject("timesheet", list);
			}
			else if(ename == "")
			{
				List<TimeSheet> list = repo.findByProject(project);
				mav.addObject("timesheet", list);
				
			}else if(project.equals("Choose Project")) {
				List<TimeSheet> list = repo.findByEmail(ename);
				mav.addObject("timesheet", list);
				
				
			}else {
				List<TimeSheet> list = repo.findByProjectAndEmail(project,ename);
				
				mav.addObject("timesheet",list);
				
			}
			
			
			return mav;
		
		}
		//Delete TimeSheet
		@GetMapping("/deletetimesheetad/{id}")
		public String deletetimesheet(@PathVariable("id") Integer id,HttpSession session)
		{
			String user=(String)session.getAttribute("user");
			if(user == null ) {
				
				return "login2";
			}
			TimeSheet deletetimeSheet=service.getById(id);
			service.deleteTimesheet(deletetimeSheet);
			return "redirect:/viewtimead";
		}
	
}
