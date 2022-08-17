package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Long> {
	PatientDetail findByPinCode(int pinCode);

	PatientDetail save(PatientDetail patientdetail);

	void deleteById(long id);

	List<PatientDetail> findAll();

	PatientDetail findByAadharNumber(long aadharNumber);

	List<PatientDetail> findAllByPinCode(int pinCode);

	List<PatientDetail> findAllByAadharNumber(long aadharNumber);

	// count dead

	@Query(value = "select count(*) from patient_details u where u.active_status<>'Alive'", nativeQuery = true)
	long count();
}
