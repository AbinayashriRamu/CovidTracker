package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.model.CentreDetail;

public interface CentreDetailRepository extends CrudRepository<CentreDetail, Integer> 
{
	CentreDetail findById(int id);

	CentreDetail save(CentreDetail centredetail);

	void deleteById(int id);
	
	List<CentreDetail> findAll();

}
