package com.mp.entity;




import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "emp")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	
	//Column of Employee Table
	
	private Integer id;
	private String fname;
	private String lname;
	private String password;
	private String role;
	private String email;
	private String gender;
	private  String address;
	private String phno;
	
	//Setter and Getter
	
		
	public Integer getId() {
			return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fname=" + fname + ", lname=" + lname + ", password=" + password + ", role="
				+ role + ", email=" + email + ", gender=" + gender + ", address=" + address + ", phno=" + phno + "]";
	}

	
	
	 
	
	
}
