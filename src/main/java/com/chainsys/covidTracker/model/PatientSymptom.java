package com.chainsys.covidtracker.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT_SYMPTOMS")
public class PatientSymptom {
	@Column(name = "aadhar_no")
	private long aadharNo;
	@Column(name = "observation_date")
	private Date observationDate;
	@Id
	@Column(name = "observation_id")
	private long observationId;
	@Column(name = "observated_by")
	private String observatedBy;
	@Column(name = "temperature")
	private float temperature;
	@Column(name = "cold")
	private String cold;
	@Column(name = "cough")
	private String cough;
	@Column(name = "smell")
	private String smell;
	@Column(name = "taste")
	private String taste;
	public long getAadharNo() {
		return aadharNo;
	}
	public void setAadharNo(long aadharNo) {
		this.aadharNo = aadharNo;
	}
	public Date getObservationDate() {
		return observationDate;
	}
	public void setObservationDate(Date observationDate) {
		this.observationDate = observationDate;
	}
	public long getObservationId() {
		return observationId;
	}
	public void setObservationId(long observationId) {
		this.observationId = observationId;
	}
	public String getObservatedBy() {
		return observatedBy;
	}
	public void setObservatedBy(String observatedBy) {
		this.observatedBy = observatedBy;
	}
	public float getTemperature() {
		return temperature;
	}
	public void setTemperature(float temperature) {
		this.temperature = temperature;
	}
	public String getCold() {
		return cold;
	}
	public void setCold(String cold) {
		this.cold = cold;
	}
	public String getCough() {
		return cough;
	}
	public void setCough(String cough) {
		this.cough = cough;
	}
	public String getSmell() {
		return smell;
	}
	public void setSmell(String smell) {
		this.smell = smell;
	}
	public String getTaste() {
		return taste;
	}
	public void setTaste(String taste) {
		this.taste = taste;
	}
}