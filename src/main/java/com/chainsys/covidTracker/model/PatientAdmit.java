package com.chainsys.covidtracker.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Past;

@Entity
@Table(name = "PATIENT_ADMIT")
public class PatientAdmit {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "admit_id_seq")
	@SequenceGenerator(name = "admit_id_seq", sequenceName = "admit_id_seq", allocationSize = 1)
	@Column(name = "admit_id")
	private int admitId;
	@Column(name = "aadhar_number")
	private long aadharNumber;
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "staff_id")
	private int staffId;
	@Column(name = "admit_date")
	@Past
	private Date admitDate;
	@Column(name = "discharge_date")
	@Past
	private Date dischargeDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Staff_id", nullable = false, insertable = false, updatable = false)
	private CentreStaff centrestaff;

	public CentreStaff getCentrestaff() {
		return centrestaff;
	}

	public void setCentrestaff(CentreStaff centrestaff) {
		this.centrestaff = centrestaff;
	}

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

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
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

	public Date getDischargeDate() {
		return dischargeDate;
	}

	public void setDischargeDate(Date dischargeDate) {
		this.dischargeDate = dischargeDate;
	}

}