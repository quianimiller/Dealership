package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Employee;
import com.claim.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository employeerepository;
	
	public Employee saveEmployee(Employee employee) {
		return employeerepository.save(employee);
	}
	
	public Employee loginEmployee(Employee employee) {
		return employeerepository.loginEmp(employee.getEmployeeId(), employee.getPassword());
	}
	
	
}
