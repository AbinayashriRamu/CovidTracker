package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.model.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Long> {
	PatientDetail findById(long id);

	PatientDetail save(PatientDetail patientdetail);

	void deleteById(long id);

	List<PatientDetail> findAll();

	List<PatientDetail> findByPin_code(int id);

}
