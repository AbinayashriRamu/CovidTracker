package com.chainsys.covidTracker.pojo;

import java.util.Date;
@Entity
public class PatientAdmit {
	private long aadhar_no;
	private int centre_id;
	private Date admit_date;
	private String admitted_id;

	public long getAadhar_no() {
		return aadhar_no;
	}

	public void setAadhar_no(long aadhar_no) {
		this.aadhar_no = aadhar_no;
	}

	public int getCentre_id() {
		return centre_id;
	}

	public void setCentre_id(int centre_id) {
		this.centre_id = centre_id;
	}

	public Date getAdmit_date() {
		return admit_date;
	}

	public void setAdmit_date(Date admit_date) {
		this.admit_date = admit_date;
	}

	public String getAdmitted_id() {
		return admitted_id;
	}

	public void setAdmitted_id(String admitted_id) {
		this.admitted_id = admitted_id;
	}

}
