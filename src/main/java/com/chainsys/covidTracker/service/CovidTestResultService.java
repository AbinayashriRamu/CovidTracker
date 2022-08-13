package com.chainsys.covidtracker.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.CovidTestResult;
import com.chainsys.covidtracker.repository.CovidTestResultRepository;

@Service
public class CovidTestResultService {
	@Autowired
	private CovidTestResultRepository repository;

	public List<CovidTestResult> getAllCovidTestResultDetail() {
		return repository.findAll();
	}

	public CovidTestResult save(CovidTestResult covidtestresult) {
		return repository.save(covidtestresult);
	}

	public CovidTestResult findById(long id) {
		return repository.findById(id);
	}

	public void deleteById(long id) {
		repository.deleteById(id);
	}
	
	public List<CovidTestResult> findByTestResult() {
		List<CovidTestResult> covidtestresult=repository.findAll();
		return covidtestresult;
	}
	
	//if positive open admit table
	public CovidTestResult getTestIdAndTestResult(long testId,String testResult)
	{
		return repository.findByTestIdAndTestResult(testId,testResult);
	}

	public List<CovidTestResult> fetchAllByTestingDateAndResult(Date testingDate,String result) {
		return repository.findAllByTestingDateAndTestResult(testingDate,result);
	}
	//logic
	public long confirmedCaseCount() 
	{
	return repository.count();
	}
	
}
