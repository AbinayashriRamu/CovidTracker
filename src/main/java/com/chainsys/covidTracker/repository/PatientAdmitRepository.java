package com.chainsys.covidTracker.repository;

import java.util.List;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.compositekey.PatientAdmitCompositeKey;
import com.chainsys.covidTracker.model.PatientAdmit;

public interface PatientAdmitRepository extends CrudRepository<PatientAdmit, PatientAdmitCompositeKey> {
	Optional<PatientAdmit> findById(PatientAdmitCompositeKey id);

	PatientAdmit save(PatientAdmit patientadmit);

	void deleteById(PatientAdmitCompositeKey id);

	List<PatientAdmit> findAll();

}
