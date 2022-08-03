package com.chainsys.covidTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidTracker.model.RecoveryCase;
import com.chainsys.covidTracker.repository.RecoveryCaseRepository;

@Service
public class RecoveryCaseService {
	@Autowired
	private RecoveryCaseRepository repository;

	public List<RecoveryCase> getAllRecoveryCaseDetail() {
		List<RecoveryCase> recoverylist = repository.findAll();
		return recoverylist;
	}

	public RecoveryCase save(RecoveryCase recoverycase) {
		return repository.save(recoverycase);
	}

	public RecoveryCase findById(long id) {
		return repository.findById(id);
	}

	public void deleteById(long id) {
		repository.deleteById(id);
	}

}
