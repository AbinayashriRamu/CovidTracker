package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.PatientDetail;
import com.chainsys.covidTracker.repository.PatientDetailRepository;

@Service
public class PatientDetailService {
	@Autowired
	private PatientDetailRepository repo;

	public List<PatientDetail> getPatientDetail() {
		List<PatientDetail> patientlist = repo.findAll();
		return patientlist;
	}

	public PatientDetail save(PatientDetail pd) {
		return repo.save(pd);
	}

	public PatientDetail findById(long id) {
		return repo.findById(id);
	}

	public void deleteById(long id) {
		repo.deleteById(id);
	}

	

}
