package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Vehicle;

@Repository
public interface VehicleRepository extends JpaRepository <Vehicle, Integer> {
	
	@Query("SELECT V FROM Vehicle V WHERE V.make = ?1 AND V.model = ?2 AND V.price = ?3")
	Vehicle findVehicleByMakeAndModel(String make, String model, double price);
	
	@Query("SELECT V FROM Vehicle V WHERE (V.make LIKE %?1% OR V.model LIKE %?2%) AND V.isSold = false")
	List<Vehicle>findByMakeOrModel (String make, String model);
	
	@Query("SELECT V FROM Vehicle V WHERE V.isSold = false")
	List<Vehicle>findDetails ();

}

