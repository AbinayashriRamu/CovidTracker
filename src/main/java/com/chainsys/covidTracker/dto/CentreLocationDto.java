package com.chainsys.covidtracker.dto;

import com.chainsys.covidtracker.model.CentreDetail;

public class CentreLocationDto {

	private CentreDetail centredetail;

	public CentreDetail getCentreDetail() {
		return centredetail;
	}

	public void setCentredetail(CentreDetail centredetail) {
		this.centredetail = centredetail;
	}
}
