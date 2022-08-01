package com.chainsys.covidTracker.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.CentreDetail;
import com.chainsys.covidTracker.repository.CentreDetailRepository;

@Service
public class CentreDetailService {
	@Autowired
	private CentreDetailRepository repo;

	public List<CentreDetail> getAllCentreDetail() {
		List<CentreDetail> cenidlist = repo.findAll();
		return cenidlist;
	}

	public CentreDetail save(CentreDetail cd) {
		return repo.save(cd);
	}

	public CentreDetail findById(int id) {
		return repo.findById(id);
	}
	public void deleteById(int id) {
		repo.deleteById(id);
	}

}
