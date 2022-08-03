package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.model.PatientSymptom;

public interface PatientSymptomRepository extends CrudRepository<PatientSymptom, Long> {
	PatientSymptom findById(long id);

	PatientSymptom save(PatientSymptom patientsymptom);

	void deleteById(long id);

	List<PatientSymptom> findAll();

}
