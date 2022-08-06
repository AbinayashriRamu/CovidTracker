package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Long> {
	PatientDetail findById(long id);

	PatientDetail save(PatientDetail patientdetail);

	void deleteById(long id);

	List<PatientDetail> findAll();

	// List<PatientDetail> findBypinCode(int id);

	PatientDetail findByPincode(int id);

}
