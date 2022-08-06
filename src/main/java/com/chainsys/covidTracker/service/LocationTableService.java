package com.chainsys.covidtracker.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.dto.LocationTableDTO;
import com.chainsys.covidtracker.model.LocationTable;
import com.chainsys.covidtracker.model.PatientDetail;
import com.chainsys.covidtracker.repository.LocationTableRepository;
import com.chainsys.covidtracker.repository.PatientDetailRepository;

@Service
public class LocationTableService {
	@Autowired
	private LocationTableRepository repository;
	@Autowired
	private PatientDetailRepository patientrepository;

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
	public LocationTableDTO getLocationPatient(int id) {
		LocationTable locationTable=findById(id);
		LocationTableDTO dto=new LocationTableDTO();
		dto.setLocationTable(locationTable);
//		List<PatientDetail>patientDetail=patientrepository.findBypinCode(id);
//		Iterator<PatientDetail>itr=patientDetail.iterator();
//		while(itr.hasNext()) {
//			dto.addPatientDetail((PatientDetail)itr.next());
//		}
		return dto;
	}

}
