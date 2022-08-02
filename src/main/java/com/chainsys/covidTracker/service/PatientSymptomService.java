package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.PatientSymptom;
import com.chainsys.covidTracker.repository.PatientSymptomRepository;

@Service
public class PatientSymptomService {
	@Autowired
	private PatientSymptomRepository repo;

	public List<PatientSymptom> getPatSymptomDetail() {
		List<PatientSymptom> patsymplist = repo.findAll();
		return patsymplist;
	}

	public PatientSymptom save(PatientSymptom ps) {
		return repo.save(ps);
	}

	public PatientSymptom findById(long id) {
		return repo.findById(id);
	}

	public void deleteById(long id) {
		repo.deleteById(id);
	}

}
