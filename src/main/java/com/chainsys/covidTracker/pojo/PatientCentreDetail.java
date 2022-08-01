package com.chainsys.covidTracker.pojo;
@Entity
public class PatientCentreDetail {
	private long aadhar_no;
	private int centre_id;

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
}
