package com.chainsys.covidTracker.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class PatientCentreCompositeKey implements Serializable {
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "centre_id")
	private int centreId;
	PatientCentreCompositeKey(){
		
	}
	public PatientCentreCompositeKey(long aadharNo, int centreId) {
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

}
