package com.chainsys.covidTracker.pojo;

import java.util.Date;

public class RecoveryCase {
	private long aadhar_no;
	private Date discharge_date;

	public long getAadhar_no() {
		return aadhar_no;
	}

	public void setAadhar_no(long aadhar_no) {
		this.aadhar_no = aadhar_no;
	}

	public Date getDischarge_date() {
		return discharge_date;
	}

	public void setDischarge_date(Date discharge_date) {
		this.discharge_date = discharge_date;
	}

}
