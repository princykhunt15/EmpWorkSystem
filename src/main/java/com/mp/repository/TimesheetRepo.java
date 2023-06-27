package com.mp.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mp.entity.TimeSheet;

@Repository
public interface TimesheetRepo extends JpaRepository<TimeSheet, Integer>{

	

	List<TimeSheet> findByProject(String project);
	List<TimeSheet> findByEmail(String ename);
	List<TimeSheet> findByProjectAndEmail(String project,String ename);
	List<TimeSheet> findByDatee(Date datee);
	List<TimeSheet> findByTitle(String title);
	List<TimeSheet> findByProjectAndTitle(String project, String title);
	

	
}
