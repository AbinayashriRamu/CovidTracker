package com.chainsys.covidtracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT_ADMIT")
public class PatientAdmit {
	@Id
	@Column(name = "admit_id")
	private int admitId;
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "staff_id")
	private int staffId;
	@Column(name = "admit_date")
	private Date admitDate;
	@Column(name = "discharge_date")
	private String dischargeDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Staff_id", nullable = false, insertable = false, updatable = false)
	private CentreStaff centrestaff;

	public CentreStaff getCentrestaff() {
		return centrestaff;
	}

	public void setCentrestaff(CentreStaff centrestaff) {
		this.centrestaff = centrestaff;
	}

//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "Centre_id", nullable = false, insertable = false, updatable = false)
//	private CentreStaff centreStaff;
//
//	public CentreStaff getCentreStaff() {
//		return centrestaff;
//	}
//
//	public void setCentreStaff(CentreStaff centreStaff) {
//		this.centreStaff = centreStaff;
//	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Centre_id", nullable = false, insertable = false, updatable = false)
	private CentreDetail centreDetail;

	public CentreDetail getCentreDetail() {
		return centreDetail;
	}

	public void setCentreDetail(CentreDetail centreDetail) {
		this.centreDetail = centreDetail;
	}
	
	

	public int getAdmitId() {
		return admitId;
	}

	public void setAdmitId(int admitId) {
		this.admitId = admitId;
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

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public Date getAdmitDate() {
		return admitDate;
	}

	public void setAdmitDate(Date admitDate) {
		this.admitDate = admitDate;
	}

	public String getDischargeDate() {
		return dischargeDate;
	}

	public void setDischargeDate(String dischargeDate) {
		this.dischargeDate = dischargeDate;
	}

}