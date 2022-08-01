package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.CovidTestResult;
import com.chainsys.covidTracker.repository.CovidTestResultRepository;

@Service
public class CovidTestResultService {
	@Autowired
	private CovidTestResultRepository repo;

	public List<CovidTestResult> getAllTestResultDetail() {
		List<CovidTestResult> resultlist = repo.findAll();
		return resultlist;
	}

	public CovidTestResult save(CovidTestResult ctr) {
		return repo.save(ctr);
	}

	public CovidTestResult findById(long id) {
		return repo.findById(id);
	}

	public void deleteById(long id) {
		repo.deleteById(id);
	}

}
