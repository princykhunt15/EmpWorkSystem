package com.mp.entity;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.http.HttpSession;

@Entity
@Table(name="timesheet")
public class TimeSheet {
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	
	//Column of the Timesheet Table 
	private Integer id;
	private String project;
	private Date datee;
	private String start;
	private String end;
	private String title;
	private String description;
	private String ename;
	private String email;
	
	//setter and getter
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProject() {
		return project;
	}
	
	public void setProject(String project) {
		this.project = project;
	}
	
	
	public Date getDatee() {
		return datee;
	}
	public void setDatee(Date datee) {
		this.datee = datee;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "TimeSheet [id=" + id + ", project=" + project + ", datee=" + datee + ", start=" + start + ", end=" + end
				+ ", title=" + title + ", description=" + description + ", ename=" + ename + ", email=" + email + "]";
	}
	
	
	

}
