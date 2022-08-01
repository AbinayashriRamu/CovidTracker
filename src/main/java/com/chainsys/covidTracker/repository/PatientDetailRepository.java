package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.pojo.PatientDetail;

public interface PatientDetailRepository extends CrudRepository<PatientDetail, Integer> {
	PatientDetail findById(int id);

	PatientDetail save(PatientDetail pd);

	void deleteById(int id);

	List<PatientDetail> findAll();

}
