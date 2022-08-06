package com.chainsys.covidtracker.compositekey;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class PatientAdmitCompositeKey implements Serializable {
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "centre_id")
	private int centreId;

	PatientAdmitCompositeKey() {

	}

	public PatientAdmitCompositeKey(long aadharNo, int centreId) {
		this.aadharNo = aadharNo;
		this.centreId = centreId;
	}

	public long getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(long aadharNo) {
		this.aadharNo = aadharNo;
	}

	public int getCentreId() {
		return centreId;
	}

	public void setCentreId(int centreId) {
		this.centreId = centreId;
	}

}
