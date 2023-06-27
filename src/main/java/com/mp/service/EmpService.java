package com.mp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mp.entity.Employee;
import com.mp.repository.EmpRepo;


@Service
public class EmpService {
	
	@Autowired
	private EmpRepo repo;
	
	
	public List<Employee> getAllEmp() {
		List<Employee> list= (List<Employee>) repo.findAll();
		return list;
	}


	public void saveEmp(Employee emp) {
		
		if(emp.getId() == null )
		{
			repo.save(emp);
		}
		else
		{
			Employee empupdte=repo.findById(emp.getId()).get();
			
			empupdte.setFname(emp.getFname()); 
			empupdte.setRole(emp.getRole());
			empupdte.setLname(emp.getLname()); 
			empupdte.setPassword(emp.getPassword());
			empupdte.setEmail(emp.getEmail());
			empupdte.setGender(emp.getGender());
			empupdte.setAddress(emp.getAddress());
			empupdte.setPhno(emp.getPhno());
			
			repo.save(empupdte);
			
		}
	}

	
	public Employee getById(Integer id) {
		return repo.findById(id).get();
		
	}

	public void deleteEmp(Employee m) {
	
		repo.delete(m);
		
	}
}
