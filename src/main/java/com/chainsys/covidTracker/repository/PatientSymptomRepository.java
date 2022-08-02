package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.pojo.PatientSymptom;

public interface PatientSymptomRepository extends CrudRepository<PatientSymptom, Long> {
	PatientSymptom findById(long id);

	PatientSymptom save(PatientSymptom ps);

	void deleteById(long id);

	List<PatientSymptom> findAll();

}
