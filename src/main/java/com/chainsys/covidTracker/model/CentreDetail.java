package com.chainsys.covidtracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CENTRE_DETAILS")
public class CentreDetail {
	@Id
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "centre_name")
	private String centreName;
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name ="hospital_city")
	private String hospitalCity;
	@Column(name = "contact_person_name")
	private String contactPersonName;
	@Column(name = "contact_person_phone_no")
	private long contactPersonPhoneNo;
	
	public int getCentreId() {
		return centreId;
	}
	public void setCentreId(int centreId) {
		this.centreId = centreId;
	}
	public String getCentreName() {
		return centreName;
	}
	public void setCentreName(String centreName) {
		this.centreName = centreName;
	}
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public String getHospitalCity() {
		return hospitalCity;
	}
	public void setHospitalCity(String hospitalCity) {
		this.hospitalCity = hospitalCity;
	}
	public String getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public long getContactPersonPhoneNo() {
		return contactPersonPhoneNo;
	}
	public void setContactPersonPhoneNo(long contactPersonPhoneNo) {
		this.contactPersonPhoneNo = contactPersonPhoneNo;
	}
	
}
	