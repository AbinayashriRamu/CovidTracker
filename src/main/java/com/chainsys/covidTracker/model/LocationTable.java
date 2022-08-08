package com.chainsys.covidtracker.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOCATION_TABLE")
public class LocationTable {
	@Id
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "district")
	private String district;
	@Column(name = "state_name")
	private String stateName;
	@Column(name = "country")
	private String country;
	@OneToMany(mappedBy = "locationtable", fetch = FetchType.LAZY)
	private List<PatientDetail> patientdetail;

	public List<PatientDetail> getPatientdetail() {
		return patientdetail;
	}

	public void setPatientdetail(List<PatientDetail> patientdetail) {
		this.patientdetail = patientdetail;
	}

	@OneToMany(mappedBy = "locationtable", fetch = FetchType.LAZY)
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