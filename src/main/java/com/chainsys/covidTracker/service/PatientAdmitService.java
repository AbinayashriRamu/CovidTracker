package com.chainsys.covidtracker.service;


import java.sql.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.CentreDetail;
import com.chainsys.covidtracker.model.PatientAdmit;
import com.chainsys.covidtracker.repository.PatientAdmitRepository;

@Service
public class PatientAdmitService {
	@Autowired
	private PatientAdmitRepository repository;

	public List<PatientAdmit> getPatientAdmitDetail() {
		List<PatientAdmit> patientadmitlist = repository.findAll();
		return patientadmitlist;
	}

	public PatientAdmit save(PatientAdmit patientadmit) {
		return repository.save(patientadmit);
	}

	public PatientAdmit findById(int id) {
		return repository.findById(id);
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}

	public PatientAdmit getPatientAdmit(int admitId) {
		return repository.findByAdmitId(admitId);
	}

	public List<PatientAdmit> fetchAllByStaffId(int staffId) {
		List<PatientAdmit> patientadmit = repository.findAllByStaffId(staffId);
		return patientadmit;
	}
	public PatientAdmit getpatientadmit(int admitId) {
		return repository.findByAdmitId(admitId);
	}

	public List<PatientAdmit> fetchAllByCentreId(int centreId) {
		List<PatientAdmit> patientadmit = repository.findAllByCentreId(centreId);
		return patientadmit;
	}
	
	public List<PatientAdmit> fetchAllByAdmitDate(Date admitDate){
		List<PatientAdmit>patientadmit=repository.findAllByAdmitDate(admitDate);
		return patientadmit;
	}
	// logic
		public long recoveryCaseCount() {
			return repository.count();
		}

}
