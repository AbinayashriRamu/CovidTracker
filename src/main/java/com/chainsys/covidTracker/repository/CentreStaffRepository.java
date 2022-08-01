package com.chainsys.covidTracker.repository;

import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.pojo.CentreStaff;

public interface CentreStaffRepository extends CrudRepository<CentreStaff, Integer> {
	CentreStaff findById(int id);

	CentreStaff save(CentreStaff cs);

	void deleteById(int id);

	List<CentreStaff> findAll();
}
