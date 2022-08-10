package com.chainsys.covidtracker.model;

import java.util.List;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT_DETAILS")
public class PatientDetail {
	@Column(name = "patient_name")
	private String patientName;
	@Id
	@Column(name = "aadhar_number")
	private long aadharNumber;
	@Column(name = "street")
	private String street;
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "blood_group")
	private String bloodGroup;
	@Column(name = "phone_no")
	private long phoneNo;
	@Column(name = "last_test_id")
	private long lastTestId;
	@Column(name = "active_status")
	private String activeStatus;
	@Column(name = "dead_date")
	private String deadDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pin_code", nullable = false, insertable = false, updatable = false)
	private PatientLocation patientlocation;

	public PatientLocation getpatientlocation() {
		return patientlocation;
	}

	public void setLocpincode(PatientLocation patientlocation) {
		this.patientlocation = patientlocation;
	}
	
	@OneToMany(mappedBy = "patientdetail", fetch = FetchType.LAZY)
	private List<CovidTestResult> covidtestresult;
	
	public List<CovidTestResult> getCovidtestresult() {
		return covidtestresult;
	}

	public void setCovidtestresult(List<CovidTestResult> covidtestresult) {
		this.covidtestresult = covidtestresult;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
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

	public long getLastTestId() {
		return lastTestId;
	}

	public void setLastTestId(long lastTestId) {
		this.lastTestId = lastTestId;
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
