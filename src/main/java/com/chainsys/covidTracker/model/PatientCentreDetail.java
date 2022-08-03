package com.chainsys.covidTracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.chainsys.covidTracker.compositekey.PatientCentreCompositeKey;

@Entity
@Table(name = "Patient_centre_details")
@IdClass(PatientCentreCompositeKey.class)
public class PatientCentreDetail {
	@Id
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "centre_id")
	private int centreId;

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
