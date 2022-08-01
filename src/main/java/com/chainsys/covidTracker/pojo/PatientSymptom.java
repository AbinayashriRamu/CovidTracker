package com.chainsys.covidTracker.pojo;

import java.util.Date;

public class PatientSymptom {
	private long aadhar_no;
	private Date symptoms_date;
	private float temperature;
	private String cold;
	private String cough;
	private String smell;
	private String taste;

	public long getAadhar_no() {
		return aadhar_no;
	}

	public void setAadhar_no(long aadhar_no) {
		this.aadhar_no = aadhar_no;
	}

	public Date getSymptoms_date() {
		return symptoms_date;
	}

	public void setSymptoms_date(Date symptoms_date) {
		this.symptoms_date = symptoms_date;
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
