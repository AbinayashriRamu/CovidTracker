package com.chainsys.covidTracker.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT_DETAILS")
public class PatientDetail {
	@Column(name = "patient_name")
	private String patientName;
	@Id
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "street")
	private String street;
	@Column(name = "staff_id")
	private String staffId;
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "blood_group")
	private String bloodGroup;
	@Column(name = "phone_no")
	private long phoneNo;
	@Column(name = "test_result")
	private String testResult;
	@Column(name = "active_status")
	private String activeStatus;
	@Column(name = "dead_date")
	private String deadDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pin_code", nullable = false, insertable = false, updatable = false)
	private LocationTable locationTable;

	public LocationTable getLocationTable() {
		return locationTable;
	}

	public void setLocationTable(LocationTable locationTable) {
		this.locationTable = locationTable;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public long getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(long aadharNo) {
		this.aadharNo = aadharNo;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getStaffId() {
		return staffId;
	}

	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}

	public int getCentreId() {
		return centreId;
	}

	public void setCentreId(int centreId) {
		this.centreId = centreId;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getTestResult() {
		return testResult;
	}

	public void setTestResult(String testResult) {
		this.testResult = testResult;
	}

	public String getActiveStatus() {
		return activeStatus;
	}

	public void setActiveStatus(String activeStatus) {
		this.activeStatus = activeStatus;
	}

	public String getDeadDate() {
		return deadDate;
	}

	public void setDeadDate(String deadDate) {
		this.deadDate = deadDate;
	}

}
