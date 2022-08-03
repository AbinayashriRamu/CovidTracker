package com.chainsys.covidTracker.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.model.CentreDetail;
import com.chainsys.covidTracker.repository.CentreDetailRepository;

@Service
public class CentreDetailService {
	@Autowired
	private CentreDetailRepository repository;

	public List<CentreDetail> getAllCentreDetail() {
		List<CentreDetail> centredetaillist = repository.findAll();
		return centredetaillist;
	}

	public CentreDetail save(CentreDetail centredetail) {
		return repository.save(centredetail);
	}

	public CentreDetail findById(int id) {
		return repository.findById(id);
	}
	public void deleteById(int id) {
		repository.deleteById(id);
	}

}
