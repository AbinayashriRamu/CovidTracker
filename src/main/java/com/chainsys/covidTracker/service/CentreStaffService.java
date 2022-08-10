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
		System.out.println("Debug: " + this.getClass().getName() + " id=" + id);
		CentreStaff staff = repository.findByStaffId(id);
		if (staff == null) {
			System.out.println("Debug:centrestaff is Null");
		} else {
			System.out.println("Debug: " + staff.getStaffId());
			System.out.println("Debug: " + staff.getStaffName());
		}
		return staff;
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}

}
