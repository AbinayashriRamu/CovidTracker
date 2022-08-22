package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientSymptom;

public interface PatientSymptomRepository extends CrudRepository<PatientSymptom, Long> {
	PatientSymptom findById(long id);

	@SuppressWarnings("unchecked")
	PatientSymptom save(PatientSymptom patientsymptom);

	void deleteById(long id);

	List<PatientSymptom> findAll();

}
