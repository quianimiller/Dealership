package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Sales;
import com.claim.entity.Vehicle;

@Repository
public interface SalesRepository extends JpaRepository <Sales, Integer> {
	
	@Query("SELECT S FROM Sales S WHERE S.purchaseId = ?1 AND S.customerId = ?2")
	List<Sales>findAllSales (Integer purchaseId, Integer customerId);

	@Query("SELECT S FROM Sales S WHERE S.customerId = ?1")
	List<Sales> custSales(Integer customerId);

}
