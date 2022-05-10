package com.claim.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Vehicle;
import com.claim.repository.VehicleRepository;

@Service
public class VehicleService {

	@Autowired
	VehicleRepository vehiclerepository;


	public Vehicle newVehicle(Vehicle vehicle) {
		return vehiclerepository.save(vehicle);
	}

	public List<Vehicle> listVehicles() {
		return vehiclerepository.findAll();
	}
//follow this pattern, Hard code the boolean to find out if the vehicle is sold.
	// Do not use the if statement with the find all because you loop through the entire database when not necessary . 
	
	public List<Vehicle> search(String keyword) {
		return vehiclerepository.findByMakeOrModel(keyword, keyword);
	}
	
	/*
	 * public List<Vehicle> findByVin(int vinNumber){
		return vehiclerepository.findDetails();
	}
	*/
	
	
	
	
	public Vehicle findByVin (int vinNumber) {
		List<Vehicle> findVehicle = vehiclerepository.findAll();
		Vehicle found = new Vehicle();
		for (Vehicle tempFound : findVehicle) {
			int vinFound = tempFound.getVinNumber();
			if (vinNumber == vinFound) {
				found = tempFound;
				
				return found;
			}		
		
		}
		return null;
	} 
	

	public List<Vehicle> sold() {
		List<Vehicle> findVehicle = vehiclerepository.findAll();
		List<Vehicle> unsold = new ArrayList<Vehicle>();
		for (Vehicle find : findVehicle) {
			if (find.isSold() == false) {
				unsold.add(find);
			}
			
		}
		return unsold;		
	}
	
	public List<Vehicle> isSold() {
		List<Vehicle> findVehicle = vehiclerepository.findAll();
		List<Vehicle> sold = new ArrayList<Vehicle>();
		for (Vehicle find : findVehicle) {
			if (find.isSold() == true) {
				sold.add(find);
			}
			
		}
		return sold;		
	}
	
	
	

}
