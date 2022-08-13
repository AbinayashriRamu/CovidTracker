package com.chainsys.covidtracker.service;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.PatientDetail;
import com.chainsys.covidtracker.repository.PatientDetailRepository;

@Service
public class PatientDetailService {
	@Autowired
	private PatientDetailRepository repository;

	public List<PatientDetail> getPatientDetail() {
		List<PatientDetail> patientlist = repository.findAll();
		return patientlist;
	}

	public PatientDetail save(PatientDetail patientdetail) {
		return repository.save(patientdetail);
	}

	public PatientDetail findByPinCode(int pinCode) {
		return repository.findByPinCode(pinCode);
	}

	public void deleteById(long id) {
		repository.deleteById(id);
	}

	public PatientDetail getPatientDetail(long aadharNumber) {
		return repository.findByAadharNumber(aadharNumber);

	}

	public List<PatientDetail> fetchAllByPinCode(int pinCode) {
		List<PatientDetail> patientlist = repository.findAllByPinCode(pinCode);
		return patientlist;

	}

	public List<PatientDetail> findAllByAadharNumber(long aadharNumber) {
		List<PatientDetail> patientlist = repository.findAllByAadharNumber(aadharNumber);
		return patientlist;

	}

	// logic
	public long deadCaseCount() {
		return repository.count();
	}

}
