package com.chainsys.covidtracker.model;

import java.util.List;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "PATIENT_LOCATIONS")
public class PatientLocation {
	@Id
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "district")
	@Pattern(regexp = "^[A-Za-z\s]\\w{1,20}$", message = "*Enter your valid name")
	@Size(min = 1, max = 20, message = "*Invalid Name")
	private String district;
	@Column(name = "state_name")
	@Pattern(regexp = "^[A-Za-z\s]\\w{3,20}$", message = "*Enter your valid name")
	@Size(min = 2, max = 30, message = "*Invalid Name")
	private String stateName;
	@Column(name = "country")
	@Pattern(regexp = "^[A-Za-z\s]\\w{3,20}$", message = "*Enter your valid name")
	@Size(min = 2, max = 25, message = "*Invalid Name")
	private String country;
	@OneToMany(mappedBy = "patientlocation", fetch = FetchType.LAZY)
	private List<PatientDetail> patientdetail;

	public List<PatientDetail> getPatientdetail() {
		return patientdetail;
	}

	public void setPatientdetail(List<PatientDetail> patientdetail) {
		this.patientdetail = patientdetail;
	}

	@OneToMany(mappedBy = "patientlocation", fetch = FetchType.LAZY)
	private List<CentreDetail> centreDetail;

	public List<CentreDetail> getCentreDetail() {
		return centreDetail;
	}

	public void setCentreDetail(List<CentreDetail> centreDetail) {
		this.centreDetail = centreDetail;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}