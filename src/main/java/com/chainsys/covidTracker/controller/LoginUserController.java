package com.chainsys.covidtracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.covidtracker.model.LoginUser;
import com.chainsys.covidtracker.service.LoginUserService;

@Controller
@RequestMapping("/loginuse")
public class LoginUserController {
	@Autowired
	LoginUserService loginuserservice;

	@GetMapping("/loginform")
	public String loginForm(Model model) {
		LoginUser login = new LoginUser();
		model.addAttribute("userLogin", login);
		return "login-user-form";
	}

	@PostMapping("/checklogin")
	public String addNewUser(@ModelAttribute("userLogin") LoginUser user, Model model) {
		LoginUser userA = loginuserservice.findbyEmailandPassword(user);
		if (userA != null) {
			return "redirect:/home/index";
		} else {
			return "redirect:/home/Error";

		}
	}
}
