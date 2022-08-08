package com.chainsys.covidtracker.repository;

import java.util.Date;
import java.util.List;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.PatientAdmit;

public interface PatientAdmitRepository extends CrudRepository<PatientAdmit, Integer> {
	PatientAdmit findById(int id);

	PatientAdmit save(PatientAdmit patientadmit);

	void deleteById(int id);

	List<PatientAdmit> findAll();

	PatientAdmit findByAdmitId(int admitId);

	
	
	PatientAdmit findByStaffId(int StaffId);

	List<PatientAdmit> findAllByStaffId(int staffId);

	PatientAdmit findByCentreId(int CentreId);

	List<PatientAdmit> findAllByCentreId(int centeId);
	
	
	List<PatientAdmit> findAllByAdmitDate(Date admitDate);

}
