package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.model.CovidTestResult;

public interface CovidTestResultRepository extends CrudRepository<CovidTestResult, Long> {
	CovidTestResult findById(long id);

	CovidTestResult save(CovidTestResult centretestrepository);

	void deleteById(long id);

	List<CovidTestResult> findAll();

}
