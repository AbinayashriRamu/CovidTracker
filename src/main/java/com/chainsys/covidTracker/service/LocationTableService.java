package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.pojo.LocationTable;
import com.chainsys.covidTracker.repository.LocationTableRepository;

@Service
public class LocationTableService {
	@Autowired
	private LocationTableRepository repo;

	public List<LocationTable> getLocationDetail() {
		List<LocationTable> locationlist = repo.findAll();
		return locationlist;
	}

	public LocationTable save(LocationTable lt) {
		return repo.save(lt);
	}

	public LocationTable findById(int id) {
		return repo.findById(id);
	}

	public void deleteById(int id) {
		repo.deleteById(id);
	}

}
