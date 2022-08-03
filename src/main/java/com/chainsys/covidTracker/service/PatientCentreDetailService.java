package com.chainsys.covidTracker.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.compositekey.PatientCentreCompositeKey;
import com.chainsys.covidTracker.model.PatientCentreDetail;
import com.chainsys.covidTracker.repository.PatientCentreDetailRepository;

@Service
public class PatientCentreDetailService {
	@Autowired
	private PatientCentreDetailRepository repository;

	public List<PatientCentreDetail> getPatientCentreDetail() {
		List<PatientCentreDetail> patientcentrelist = repository.findAll();
		return patientcentrelist;
	}

	public PatientCentreDetail save(PatientCentreDetail patientcentredetail) {
		return repository.save(patientcentredetail);
	}

	public Optional<PatientCentreDetail> findById(PatientCentreCompositeKey id) {
		return repository.findById(id);
	}

	public void deleteById(PatientCentreCompositeKey id) {
		repository.deleteById(id);
	}

}
