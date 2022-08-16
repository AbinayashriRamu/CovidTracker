package com.chainsys.covidtracker.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "PATIENT_DETAILS")
public class PatientDetail {
	@Column(name = "patient_name")
	@Pattern(regexp = "^[A-Za-z\s]*$", message = "*Enter your valid name")
	@Size(min = 2, max = 20, message = "*Invalid Name")
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
	@Digits(message = "*Invalid Mobile Number", integer = 10, fraction = 0)
	private long phoneNo;
	@Column(name = "last_test_id")
	private long lastTestId;
	@Column(name = "active_status")
	private String activeStatus;
	@Column(name = "dead_date")
	private Date deadDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pin_code", nullable = false, insertable = false, updatable = false)
	private PatientLocation patientlocation;

	public PatientLocation getpatientlocation() {
		return patientlocation;
	}

	public void setLocpincode(PatientLocation patientlocation) {
		this.patientlocation = patientlocation;
	}

//	@OneToMany(mappedBy = "patientdetail", fetch = FetchType.LAZY)
//	private List<CovidTestResult> covidtestresult;
//
//	public List<CovidTestResult> getCovidtestresult() {
//		return covidtestresult;
//	}
//
//	public void setCovidtestresult(List<CovidTestResult> covidtestresult) {
//		this.covidtestresult = covidtestresult;
//	}

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

	public Date getDeadDate() {
		return deadDate;
	}

	public void setDeadDate(Date deadDate) {
		this.deadDate = deadDate;
	}

}
