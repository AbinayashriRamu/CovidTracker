package com.chainsys.covidtracker.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Past;

@Entity
@Table(name = "COVID_TEST_RESULT")
public class CovidTestResult {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "test_id_seq")
	@SequenceGenerator(name = "test_id_seq", sequenceName = "test_id_seq", allocationSize = 1)
	@Column(name = "test_id")
	private long testId;
	@Column(name = "testing_date")
	@Past
	private Date testingDate;
	@Column(name = "test_result")
	private String testResult;
	@Column(name = "aadhar_number")
	private long aadharNumber;
	@Column(name = "test_by")
	private String testBy;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "aadhar_number", nullable = false, insertable = false, updatable = false)
	private PatientDetail patientdetail;

	public PatientDetail getPatientdetail() {
		return patientdetail;
	}

	public void setPatientdetail(PatientDetail patientdetail) {
		this.patientdetail = patientdetail;
	}

	public long getTestId() {
		return testId;
	}

	public void setTestId(long testId) {
		this.testId = testId;
	}

	public Date getTestingDate() {
		return testingDate;
	}

	public void setTestingDate(Date testingDate) {
		this.testingDate = testingDate;
	}

	public String getTestResult() {
		return testResult;
	}

	public void setTestResult(String testResult) {
		this.testResult = testResult;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getTestBy() {
		return testBy;
	}

	public void setTestBy(String testBy) {
		this.testBy = testBy;
	}

}
