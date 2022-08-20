package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.CentreStaff;

public interface CentreStaffRepository extends CrudRepository<CentreStaff, Integer> {
	CentreStaff findByStaffId(int id);

	CentreStaff save(CentreStaff centrestaff);

	void deleteById(int id);

	List<CentreStaff> findAll();
	
	
	}
