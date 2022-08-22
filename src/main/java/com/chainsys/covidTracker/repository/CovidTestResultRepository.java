package com.chainsys.covidtracker.repository;

import java.util.Date;
import java.util.List;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.CovidTestResult;

public interface CovidTestResultRepository extends CrudRepository<CovidTestResult, Long> {
	CovidTestResult findById(long id);

	@SuppressWarnings("unchecked")
	CovidTestResult save(CovidTestResult centretestrepository);

	void deleteById(long id);

	List<CovidTestResult> findAll();

	List<CovidTestResult> findAllByTestingDateAndTestResult(Date testingDate, String result);

	CovidTestResult findByTestIdAndTestResult(long testId, String testResult);
	
	//count positive case
	
	@Query(value = "Select count(*)  from covid_test_result u where u.test_result='Positive'", nativeQuery = true)
	long count();

     List<CovidTestResult>findAllByAadharNumber(long aadharNumber);

}
