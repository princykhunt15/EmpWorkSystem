package com.mp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.entity.Employee;
import com.mp.entity.TimeSheet;
import com.mp.repository.TimesheetRepo;



@Service
public class TimesheetService {
	
	@Autowired
	private TimesheetRepo repo;
	
	//Insert in the Timesheet Table
	public void addtimesheet(TimeSheet ts)
	{
		repo.save(ts);
	}
	
	//Get all timesheet
	public List<TimeSheet> getAllTime()
	{
		return repo.findAll();
	
	}
	public TimeSheet getById(Integer id) {
		return repo.findById(id).get();		
	}

	public void deleteTimesheet(TimeSheet deletetimeSheet) {
		repo.delete(deletetimeSheet);
	}
	
	public void saveTimeSheet(TimeSheet timesheet) {
		
		if(timesheet.getId() == null )
		{
			repo.save(timesheet);
		}
		else
		{
			TimeSheet timesheetUpdate=repo.findById(timesheet.getId()).get();
			
			timesheetUpdate.setProject(timesheet.getProject()); 
			timesheetUpdate.setDatee(timesheet.getDatee());
			timesheetUpdate.setStart(timesheet.getStart()); 
			timesheetUpdate.setEnd(timesheet.getEnd());
			timesheetUpdate.setTitle(timesheet.getTitle());
			timesheetUpdate.setDescription(timesheet.getDescription());
						
			repo.save(timesheetUpdate);
			
		}
	}
	
}
