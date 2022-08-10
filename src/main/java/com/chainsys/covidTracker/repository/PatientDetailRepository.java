package com.chainsys.covidtracker.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.CovidTestResult;
import com.chainsys.covidtracker.model.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Long> {
	PatientDetail findByPinCode(int pinCode);

	PatientDetail save(PatientDetail patientdetail);

	void deleteById(long id);

	List<PatientDetail> findAll();

	PatientDetail findByAadharNumber(long aadharNumber);

	List<PatientDetail> findAllByPinCode(int pinCode);
	

	List<PatientDetail> findAllByAadharNumber(long aadharNumber);
}
