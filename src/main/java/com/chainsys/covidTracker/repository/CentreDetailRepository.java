package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.CentreDetail;

public interface CentreDetailRepository extends CrudRepository<CentreDetail, Integer> {
	CentreDetail findById(int id);

	CentreDetail save(CentreDetail centredetail);

	void deleteById(int id);

	List<CentreDetail> findAll();

	CentreDetail findByPinCode(int pinCode);

	List<CentreDetail> findAllByPinCode(int pinCode);
	
	CentreDetail findByCentreId(int centreId);

}
