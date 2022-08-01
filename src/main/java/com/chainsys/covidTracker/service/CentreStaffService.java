package com.chainsys.covidTracker.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.CentreStaff;
import com.chainsys.covidTracker.repository.CentreStaffRepository;

@Service
public class CentreStaffService {
	@Autowired
	private CentreStaffRepository repo;

	public List<CentreStaff> getAllStaffDetail() {
		List<CentreStaff> stafflist = repo.findAll();
		return stafflist;
	}

	public CentreStaff save(CentreStaff cs) {
		return repo.save(cs);
	}

	public CentreStaff findById(int id) {
		return repo.findById(id);
	}
	public void deleteById(int id) {
		repo.deleteById(id);
	}

	

}
