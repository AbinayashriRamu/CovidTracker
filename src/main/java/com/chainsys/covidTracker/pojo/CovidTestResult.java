package com.chainsys.covidTracker.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COVID_TEST_RESULT")
public class CovidTestResult {
	@Id
	@Column(name = "test_id")
	private long testId;
	@Column(name = "testing_date")
	private Date testingDate;
	@Column(name = "test_result")
	private String testResult;
	@Column(name = "aadhar_no")
	private long aadharNo;

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

	public long getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(long aadharNo) {
		this.aadharNo = aadharNo;
	}

}
