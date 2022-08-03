package com.chainsys.covidTracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT_SYMPTOMS")
public class PatientSymptom {
	@Id
	@Column(name = "aadhar_no")
	private long aadharno;
	@Column(name = "symptoms_date")
	private Date symptomsdate;
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

	public long getAadharno() {
		return aadharno;
	}

	public void setAadharno(long aadharno) {
		this.aadharno = aadharno;
	}

	public Date getSymptomsdate() {
		return symptomsdate;
	}

	public void setSymptomsdate(Date symptomsdate) {
		this.symptomsdate = symptomsdate;
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
