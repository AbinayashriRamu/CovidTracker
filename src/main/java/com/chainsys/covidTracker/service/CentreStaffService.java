package com.chainsys.covidtracker.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.CentreStaff;
import com.chainsys.covidtracker.repository.CentreStaffRepository;

@Service
public class CentreStaffService {
	@Autowired
	private CentreStaffRepository repository;

	public List<CentreStaff> getAllCentreStaff() {
		List<CentreStaff> stafflist = repository.findAll();
		return stafflist;
	}

	public CentreStaff save(CentreStaff centrestaff) {
		return repository.save(centrestaff);
	}

	public CentreStaff findByStaffId(int id) {
		CentreStaff staff = repository.findByStaffId(id);
		return staff;
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}

}
