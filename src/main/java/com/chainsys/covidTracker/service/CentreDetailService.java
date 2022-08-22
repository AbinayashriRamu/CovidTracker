package com.chainsys.covidtracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.CentreDetail;
import com.chainsys.covidtracker.repository.CentreDetailRepository;

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
		return repository.findByCentreId(id);
	}
    
	public void deleteById(int id) {
		repository.deleteById(id);
	}

	public CentreDetail getCentreDetail(int centreId) {
		return repository.findByCentreId(centreId);
	}

	public CentreDetail getCentreDetails(int staffId) {
		return repository.findByCentreId(staffId);
	}

	public List<CentreDetail> fetchAllByPinCode(int pinCode) {
		List<CentreDetail> centredetail = repository.findAllByPinCode(pinCode);
		return centredetail;
	}

}
