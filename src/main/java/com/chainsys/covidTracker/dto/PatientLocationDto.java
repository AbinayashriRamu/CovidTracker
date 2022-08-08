package com.chainsys.covidtracker.dto;

import com.chainsys.covidtracker.model.LocationTable;

public class PatientLocationDto {

	private LocationTable locationtable;

	public LocationTable getLocationTable() {
		return locationtable;
	}

	public void setLoctiontable(LocationTable locationtable) {
		this.locationtable = locationtable;
	}
}
