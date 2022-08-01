package com.chainsys.covidTracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidTracker.pojo.LocationTable;

public interface LocationTableRepository extends CrudRepository<LocationTable, Integer> {
	LocationTable findById(int id);

	LocationTable save(LocationTable lt);

	void deleteById(int id);

	List<LocationTable> findAll();
}
