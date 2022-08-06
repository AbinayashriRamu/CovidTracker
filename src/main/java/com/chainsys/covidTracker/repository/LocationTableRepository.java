package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.LocationTable;

public interface LocationTableRepository extends CrudRepository<LocationTable, Integer> {
	LocationTable findById(int id);

	LocationTable save(LocationTable locationtable);

	void deleteById(int id);

	List<LocationTable> findAll();
}
