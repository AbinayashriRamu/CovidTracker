package com.chainsys.covidtracker.model;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "CENTRE_DETAILS")
public class CentreDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "centre_id_seq")
	@SequenceGenerator(name = "centre_id_seq", sequenceName = "centre_id_seq", allocationSize = 1)
	@Column(name = "centre_id")
	private int centreId;
	@Column(name = "centre_name")
	@Size(max = 20, min = 1, message = "*CentreName length should be 1 to 20")
	@Pattern(regexp = "^[A-Za-z\s]*$", message = "*Enter your valid name")
	private String centreName;
	@Column(name = "pin_code")
	private int pinCode;
	@Column(name = "contact_person_name")
	@Pattern(regexp = "^[A-Za-z\s]*$", message = "*Enter your valid name")
	@Size(min = 2, max = 20, message = "*ContactPersonName legth should be 2 to 20")
	private String contactPersonName;
	@Column(name = "contact_person_phone_no")
	@Digits(message = "*Invalid Mobile Number", integer = 10, fraction = 0)
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
