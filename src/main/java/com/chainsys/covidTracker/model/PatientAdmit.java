package com.chainsys.covidTracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.chainsys.covidTracker.compositekey.PatientAdmitCompositeKey;
@Entity
@Table(name = "PATIENT_ADMIT")
@IdClass(PatientAdmitCompositeKey.class)
public class PatientAdmit  {
	@Id
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Id
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "admit_date")
	private Date admitDate;
	@Column(name = "admitted_by")
	private String admittedBy;
	
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
	public Date getAdmitDate() {
		return admitDate;
	}
	public void setAdmitDate(Date admitDate) {
		this.admitDate = admitDate;
	}
	public String getAdmittedBy() {
		return admittedBy;
	}
	public void setAdmittedBy(String admittedBy) {
		this.admittedBy = admittedBy;
	}
	

	
}
