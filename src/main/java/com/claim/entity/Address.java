package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="adddress")
public class Address {
		
		@GeneratedValue (strategy=GenerationType.IDENTITY)
		@Id
		@Column(name="id") //@Column allow you to specify the column mapping
		private int id;
		
		@Column(name="street")
		private String street;
		
		@Column(name="city")
		private String city;
		
		@Column(name="zip")
		private String zip;
		
		@Column(name="state")
		private String state;

		public Address() {
		}

		public Address(int id, String street, String city, String zip, String state) {
			this.id = id;
			this.street = street;
			this.city = city;
			this.zip = zip;
			this.state = state;
		}

		public int getAddressId() {
			return id;
		}

		public void setAddressId(int addressId) {
			this.id = addressId;
		}

		public String getStreet() {
			return street;
		}

		public void setStreet(String street) {
			this.street = street;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getZip() {
			return zip;
		}

		public void setZip(String zip) {
			this.zip = zip;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		
}
