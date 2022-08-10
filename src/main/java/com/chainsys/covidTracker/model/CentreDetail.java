package com.chainsys.covidtracker.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CENTRE_DETAILS")
public class CentreDetail {
	@Id
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "centre_name")
	private String centreName;
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "contact_person_name")
	private String contactPersonName;
	@Column(name = "contact_person_phone_no")
	private long contactPersonPhoneNo;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pin_code", nullable = false, insertable = false, updatable = false)
	private PatientLocation patientlocation;

	public PatientLocation getpatientLocation() {
		return patientlocation;
	}

	public void setLocationtable(PatientLocation patientlocation) {
		this.patientlocation = patientlocation;
	}

//	@OneToMany(mappedBy = "centreStaff", fetch = FetchType.LAZY)
//	private List<PatientAdmit> patientadmit;
//
//	public List<PatientAdmit> getPatientadmit() {
//		return patientadmit;
//	}
//
//	public void setPatientadmit(List<PatientAdmit> patientadmit) {
//		this.patientadmit = patientadmit;
//	}

	@OneToMany(mappedBy = "centreDetail", fetch = FetchType.LAZY)
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

	public String getCentreName() {
		return centreName;
	}

	public void setCentreName(String centreName) {
		this.centreName = centreName;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String getContactPersonName() {
		return contactPersonName;
	}

	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}

	public long getContactPersonPhoneNo() {
		return contactPersonPhoneNo;
	}

	public void setContactPersonPhoneNo(long contactPersonPhoneNo) {
		this.contactPersonPhoneNo = contactPersonPhoneNo;
	}
}
