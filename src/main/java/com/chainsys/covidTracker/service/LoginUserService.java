package com.chainsys.covidtracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.covidtracker.model.LoginUser;
import com.chainsys.covidtracker.repository.LoginUserRepository;

@Service
public class LoginUserService {
	@Autowired
	private LoginUserRepository repository;
	public LoginUser findbyEmailandPassword(LoginUser user) {
		return repository.findByEmailAndPassword(user.getEmail(), user.getPassword());
		}
}
