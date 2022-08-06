package com.chainsys.covidtracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RECOVERY_CASES")
public class RecoveryCase {
	@Id
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "discharge_date")
	private Date dischargeDate;

	public long getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(long aadharNo) {
		this.aadharNo = aadharNo;
	}

	public Date getDischargeDate() {
		return dischargeDate;
	}

	public void setDischargeDate(Date dischargeDate) {
		this.dischargeDate = dischargeDate;
	}

}
