package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Customer;
import com.claim.repository.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	CustomerRepository customerrepository;
	
	public Customer saveCustomer(Customer customer) {
		return customerrepository.save(customer);
	}
	
	
	public Customer loginCustomer(Customer customer) {
		return customerrepository.login(customer.getEmail(), customer.getPassword());
	}
	
}
