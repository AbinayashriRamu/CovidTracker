package com.chainsys.covidtracker.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.RecoveryCase;

public interface RecoveryCaseRepository extends CrudRepository<RecoveryCase, Long> {
	RecoveryCase findById(long id);

	RecoveryCase save(RecoveryCase recoverycase);

	void deleteById(long id);

	List<RecoveryCase> findAll();

}
