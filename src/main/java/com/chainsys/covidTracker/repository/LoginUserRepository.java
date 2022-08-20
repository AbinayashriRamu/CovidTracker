package com.chainsys.covidtracker.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.covidtracker.model.LoginUser;

public interface LoginUserRepository extends CrudRepository<LoginUser,String>{
		LoginUser findByEmailAndPassword(String email,String password);
}