package com.claim.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="sales")
public class Sales {
	
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	@Id
	@Column(name="purchase_id") //@Column allow you to specify the column mapping
	private int purchaseId;
	
	@Column(name="date_purchased")
	private Date datePurchased;
	
	
	/*@OneToOne (cascade = CascadeType.ALL)
	@JoinColumn(name="price")
	private Vehicle price;*/
	
	@OneToOne (cascade = CascadeType.ALL)
	@JoinColumn(name="customer_id")
	private Customer customerId;
	
	@Column(name="is_discounted")
	private boolean isDiscounted;
	
	@OneToOne
	@JoinColumn(name="vin_sold")
	private Vehicle vinSsold;
	
	@OneToOne
	@JoinColumn(name="employee_id")
	private Employee employeeId;

	public Sales() {
	}

	
	public Sales(int purchaseId, Date datePurchased, Customer customerId, boolean isDiscounted, Vehicle vinSsold,
			Employee employeeId) {
		this.purchaseId = purchaseId;
		this.datePurchased = datePurchased;
		this.customerId = customerId;
		this.isDiscounted = isDiscounted;
		this.vinSsold = vinSsold;
		this.employeeId = employeeId;
	}


	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public Date getDatePurchased() {
		return datePurchased;
	}

	public void setDatePurchased(Date datePurchased) {
		this.datePurchased = datePurchased;
	}

	public Customer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Customer customerId) {
		this.customerId = customerId;
	}

	public boolean isDiscounted() {
		return isDiscounted;
	}

	public void setDiscounted(boolean isDiscounted) {
		this.isDiscounted = isDiscounted;
	}

	public Vehicle getVinSsold() {
		return vinSsold;
	}

	public void setVinSsold(Vehicle vinSsold) {
		this.vinSsold = vinSsold;
	}


	public Employee getEmployeeId() {
		return employeeId;
	}


	public void setEmployeeId(Employee employeeId) {
		this.employeeId = employeeId;
	}
	
	

}
