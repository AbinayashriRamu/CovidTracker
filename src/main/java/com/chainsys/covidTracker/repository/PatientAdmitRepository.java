package com.chainsys.covidtracker.repository;


import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientAdmit;

public interface PatientAdmitRepository extends CrudRepository<PatientAdmit, Integer> {
	PatientAdmit findById(int id);

	PatientAdmit save(PatientAdmit patientadmit);

	void deleteById(int id);

	List<PatientAdmit> findAll();

	PatientAdmit findByAdmitId(int admitId);

	
	
	PatientAdmit findByStaffId(int staffId);

	List<PatientAdmit> findAllByStaffId(int staffId);

	PatientAdmit findByCentreId(int centreId);

	List<PatientAdmit> findAllByCentreId(int centreId);
	
	
	List<PatientAdmit> findAllByAdmitDate(Date admitDate);
	
	
	@Query(value = "select count(*) from patient_admit where discharge_date is not null", nativeQuery = true)
	long count();

}
