package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository <Customer, Integer> {

	@Query("SELECT C FROM Customer C WHERE C.email = ?1 AND C.password =?2")
	Customer login (String email, String password);
}




