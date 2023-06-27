package com.mp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mp.entity.Employee;

@Repository
public interface EmpRepo extends JpaRepository<Employee,Integer>{
	
	//use for Check user in login page (Admin|Employee|other) 
	  Employee findByEmail(String email);

	List<Employee> findByRole(String s);
	
	  		
}
