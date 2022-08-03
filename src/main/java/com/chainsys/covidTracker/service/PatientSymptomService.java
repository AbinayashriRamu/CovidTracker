package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.model.PatientSymptom;
import com.chainsys.covidTracker.repository.PatientSymptomRepository;

@Service
public class PatientSymptomService {
	@Autowired
	private PatientSymptomRepository repository;

	public List<PatientSymptom> getPatientSymptomDetail() {
		List<PatientSymptom> patientsymptomlist = repository.findAll();
		return patientsymptomlist;
	}

	public PatientSymptom save(PatientSymptom patientsymptom) {
		return repository.save(patientsymptom);
	}

	public PatientSymptom findById(long id) {
		return repository.findById(id);
	}

	public void deleteById(long id) {
		repository.deleteById(id);
	}

}
