package com.claim.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.tomcat.util.codec.binary.Base64;

@Entity
@Table(name="vehicle")
public class Vehicle {
	
	
	@Id
	@Column(name="vin_number") //@Column allow you to specify the column mapping
	private int vinNumber;
	
	@Column(name="year")
	private String year;
	
	@Column(name="make")
	private String make;
	
	@Column(name="model")
	private String model;
	
	@Column(name="mileage")
	private int mileage;
	
	@Column(name="color")
	private String color;
	
	@Column(name="car_description")
	private String carDescription;
	
	@Column(name="price")
	private double price;
	
	@Column(name="is_sold")
	private boolean isSold;
	
	@Column(name="purchase_date")
	private Date purchaseDate;
	
	@Column(name="picture")
	private byte [] picture;

	public Vehicle() {
		
	}

	public Vehicle(int vinNumber, String year, String make, String model, int mileage, String color,
			String carDescription, double price, boolean isSold, Date purchaseDate, byte[] picture) {
		this.vinNumber = vinNumber;
		this.year = year;
		this.make = make;
		this.model = model;
		this.mileage = mileage;
		this.color = color;
		this.carDescription = carDescription;
		this.price = price;
		this.isSold = isSold;
		this.purchaseDate = purchaseDate;
		this.picture = picture;
	}
	
	@Transient
	public String getVehicleImage() {
		return "data:image/png;base64," + Base64.encodeBase64String(picture);
		
	}

	public int getVinNumber() {
		return vinNumber;
	}

	public void setVinNumber(int vinNumber) {
		this.vinNumber = vinNumber;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getCarDescription() {
		return carDescription;
	}

	public void setCarDescription(String carDescription) {
		this.carDescription = carDescription;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public boolean isSold() {
		return isSold;
	}

	public void setSold(boolean isSold) {
		this.isSold = isSold;
	}

	public Date getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

}
