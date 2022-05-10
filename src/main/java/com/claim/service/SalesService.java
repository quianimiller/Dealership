      package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.claim.entity.Sales;
import com.claim.repository.SalesRepository;

@Service
public class SalesService {

	@Autowired
	SalesRepository salesrepository;
	
	public Sales newSale (Sales sales) {
		
		return salesrepository.save(sales);
	}
	
	public List<Sales> listSales() {
		return salesrepository.findAll();
	}

	public List<Sales> findByCustId(Integer customerId) {
		return salesrepository.custSales(customerId);
	}
}
