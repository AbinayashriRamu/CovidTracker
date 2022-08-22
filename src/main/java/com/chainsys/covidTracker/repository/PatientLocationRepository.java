package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientLocation;

public interface PatientLocationRepository extends CrudRepository<PatientLocation, Integer> {
	PatientLocation findById(int id);

	@SuppressWarnings("unchecked")
	PatientLocation save(PatientLocation patientlocation);

	void deleteById(int id);

	List<PatientLocation> findAll();
	
	
}
