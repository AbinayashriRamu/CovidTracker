package com.chainsys.covidtracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.PatientLocation;

import com.chainsys.covidtracker.repository.PatientLocationRepository;

@Service
public class PatientLocationService {
	@Autowired
	private PatientLocationRepository repository;

	public List<PatientLocation> getLocationTable() {
		List<PatientLocation> locationlist = repository.findAll();
		return locationlist;
	}

	public PatientLocation save(PatientLocation patientlocation) {
		return repository.save(patientlocation);
	}

	public PatientLocation findById(int id) {
		return repository.findById(id);
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}

}
