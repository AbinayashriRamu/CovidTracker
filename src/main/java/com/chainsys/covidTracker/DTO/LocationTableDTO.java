package com.chainsys.covidtracker.dto;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.covidtracker.model.LocationTable;
import com.chainsys.covidtracker.model.PatientDetail;

public class LocationTableDTO {
	@Autowired
	private LocationTable locationTable;
	private List<PatientDetail> patientDetail = new ArrayList<PatientDetail>();

	public LocationTable getLocationTable() {
		return locationTable;
	}

	public void setLocationTable(LocationTable locationTable) {
		this.locationTable = locationTable;
	}

	public List<PatientDetail> getPatientDetail() {
		return patientDetail;
	}

	public void addPatientDetail(PatientDetail patientDetails) {
		patientDetail.add(patientDetails);
	}

}
