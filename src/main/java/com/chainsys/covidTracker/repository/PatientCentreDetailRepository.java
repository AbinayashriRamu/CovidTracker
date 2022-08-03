package com.chainsys.covidTracker.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.compositekey.PatientCentreCompositeKey;
import com.chainsys.covidTracker.model.PatientCentreDetail;

public interface PatientCentreDetailRepository extends CrudRepository<PatientCentreDetail, PatientCentreCompositeKey> {
	Optional<PatientCentreDetail> findById(PatientCentreCompositeKey id);

	PatientCentreDetail save(PatientCentreDetail patientcentredetail);

	void deleteById(PatientCentreCompositeKey id);

	List<PatientCentreDetail> findAll();
}
