package com.chainsys.covidTracker.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.compositekey.PatientAdmitCompositeKey;
import com.chainsys.covidTracker.model.PatientAdmit;
import com.chainsys.covidTracker.repository.PatientAdmitRepository;

@Service
public class PatientAdmitService {
	@Autowired
	private PatientAdmitRepository repository;

	public List<PatientAdmit> getPatientAdmitDetail() {
		List<PatientAdmit> patientadmitlist = repository.findAll();
		return patientadmitlist;
	}

	public PatientAdmit save(PatientAdmit patientadmit) {
		return repository.save(patientadmit);
	}

	public Optional<PatientAdmit> findById(PatientAdmitCompositeKey id) {
		return repository.findById(id);
	}

	public void deleteById(PatientAdmitCompositeKey id) {
		repository.deleteById(id);
	}

	

}
