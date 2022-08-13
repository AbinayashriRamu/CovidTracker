package com.chainsys.covidtracker.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "CENTRE_STAFF")
public class CentreStaff {
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "staff_name")
	@Pattern(regexp = "^[A-Za-z\s]\\w{3,20}$", message = "*Enter your valid name")
	@Size(min = 2, max = 20, message = "*Invalid Name")
	private String staffName;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "staff_id_seq")
	@SequenceGenerator(name = "staff_id_seq", sequenceName = "staff_id_seq", allocationSize = 1)
	@Column(name = "staff_id")
	private int staffId;
	@Column(name = "staff_role")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter your valid name")
	@Size(min = 2, max = 20, message = "*Invalid Name")
	private String staffRole;
	@Column(name = "staff_gender")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter your valid name")
	@Size(min = 2, max = 20, message = "*Invalid Name")
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