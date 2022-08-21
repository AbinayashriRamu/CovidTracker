package com.chainsys.covidtracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.covidtracker.service.CovidTestResultService;
import com.chainsys.covidtracker.service.PatientAdmitService;
import com.chainsys.covidtracker.service.PatientDetailService;

@Controller
@RequestMapping("/home")
public class IndexController {
	@Autowired
	CovidTestResultService service; 
	@Autowired
	PatientAdmitService patientAdmitService;
	@Autowired
	PatientDetailService patientDetailService;

	@GetMapping("/index")
	public String getIndex(Model model) {
		long positivecount=service.confirmedCaseCount();
		model.addAttribute("pcount",positivecount);
		long recoverycount=patientAdmitService.recoveryCaseCount();
		model.addAttribute("rcount",recoverycount);
		long deadcount=patientDetailService.deadCaseCount();
		model.addAttribute("dcount",deadcount);
		return "index" ;
	}

	@GetMapping("/ForAllTables")
	public String staffAcess(Model model) {
		return "addalltables";
	}

	@GetMapping("/ForViewList")
	public String staffView(Model model) {
		return "viewdetails";
	}


	@GetMapping("/Error")
	public String whitelable(Model model) {
		return "whitelableerror";
	}

}
