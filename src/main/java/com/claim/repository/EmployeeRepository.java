package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository <Employee, Integer>{
	
	@Query("SELECT E FROM Employee E WHERE E.employeeId = ?1 AND E.password =?2")
	Employee loginEmp (int employeeId, String password);
}
