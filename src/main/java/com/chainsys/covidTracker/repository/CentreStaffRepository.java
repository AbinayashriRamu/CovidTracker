package com.chainsys.covidTracker.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.model.CentreStaff;

public interface CentreStaffRepository extends CrudRepository<CentreStaff, Integer> {
	CentreStaff findById(int id);

	CentreStaff save(CentreStaff centrestaff);

	void deleteById(int id);

	List<CentreStaff> findAll();
}
