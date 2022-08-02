package com.chainsys.covidTracker.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "PATIENT_ADMIT")
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
	

	
}
