package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.model.LocationTable;
import com.chainsys.covidTracker.repository.LocationTableRepository;

@Service
public class LocationTableService {
	@Autowired
	private LocationTableRepository repository;

	public List<LocationTable> getLocationDetail() {
		List<LocationTable> locationlist = repository.findAll();
		return locationlist;
	}

	public LocationTable save(LocationTable locationtable) {
		return repository.save(locationtable);
	}

	public LocationTable findById(int id) {
		return repository.findById(id);
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}

}
