package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Long> {
	PatientDetail findByPinCode(int PinCode);

	PatientDetail save(PatientDetail patientdetail);

	void deleteById(long id);

	List<PatientDetail> findAll();

	PatientDetail findByAadharNo(long aadharNo);

	List<PatientDetail> findAllByPinCode(int pinCode);

}
