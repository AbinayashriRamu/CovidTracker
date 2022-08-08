package com.chainsys.covidtracker.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CENTRE_STAFF")
public class CentreStaff {
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "staff_name")
	private String staffName;
	@Id
	@Column(name = "staff_id")
	private int staffId;
	@Column(name = "staff_role")
	private String staffRole;
	@Column(name = "staff_gender")
	private String staffGender;
	@Column(name = "staff_date_of_birth")
	private Date staffDateOfBirth;

	@OneToMany(mappedBy = "centrestaff", fetch = FetchType.LAZY)
	private List<PatientAdmit> patientadmit;

	public List<PatientAdmit> getPatientadmit() {
		return patientadmit;
	}

	public void setPatientadmit(List<PatientAdmit> patientadmit) {
		this.patientadmit = patientadmit;
	}

	public int getCentreId() {
		return centreId;
	}

	public void setCentreId(int centreId) {
		this.centreId = centreId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffRole() {
		return staffRole;
	}

	public void setStaffRole(String staffRole) {
		this.staffRole = staffRole;
	}

	public String getStaffGender() {
		return staffGender;
	}

	public void setStaffGender(String staffGender) {
		this.staffGender = staffGender;
	}

	public Date getStaffDateOfBirth() {
		return staffDateOfBirth;
	}

	public void setStaffDateOfBirth(Date staffDateOfBirth) {
		this.staffDateOfBirth = staffDateOfBirth;
	}

}