package com.chainsys.covidTracker.repository;

import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.pojo.CovidTestResult;

public interface CovidTestResultRepository extends CrudRepository<CovidTestResult, Long> {
	CovidTestResult findById(long id);

	CovidTestResult save(CovidTestResult ctr);

	void deleteById(long id);

	List<CovidTestResult> findAll();
}
