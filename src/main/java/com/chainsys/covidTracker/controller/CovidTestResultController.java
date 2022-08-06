package com.chainsys.covidtracker.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.covidtracker.model.CovidTestResult;
import com.chainsys.covidtracker.service.CovidTestResultService;

@Controller
@RequestMapping("/testresultdetail")
public class CovidTestResultController {
	@Autowired
	CovidTestResultService covidtestresultservice;

	@GetMapping("/testresultlist")
	public String getAllCovidTestResult(Model model) {
		List<CovidTestResult> covidtestresult = covidtestresultservice.getAllCovidTestResultDetail();
		model.addAttribute("allCovidTestResults", covidtestresult);
		return "testresultlist-testresultdetail";
	}
	@GetMapping("/findtestresult")
	public String findById(@RequestParam("id")long id,Model model) {
		CovidTestResult covidtestresult=covidtestresultservice.findById(id);
		model.addAttribute("getTestResults",covidtestresult);
		return "find-test-result-form";
	}
	@GetMapping("addtestresultform")
	public String showTestResult(Model model) {
		CovidTestResult covidtestresult=new CovidTestResult();
		model.addAttribute("addTestResults", covidtestresult);
		return "add-test-result-form";
	}
	@PostMapping("/addtestresult")
	public String addNewTestResult(@ModelAttribute("addTestResults") CovidTestResult covidtestresult) {
		covidtestresultservice.save(covidtestresult);
		return "redirect:/testresultdetail/testresultlist";
	}
	@GetMapping("/deletetestresult")
	public String deleteTestResult(@RequestParam("testId")long id) {
		covidtestresultservice.deleteById(id);
		return "redirect:/testresultdetail/testresultlist";
	}
	@GetMapping("/updatetestresultform")
	public String showUpdateTestResult(@RequestParam("testId")long id,Model model) {
		CovidTestResult covidtestresult=covidtestresultservice.findById(id);
		model.addAttribute("updateTestresults", covidtestresult);
		return "update-Test-Result-form";
	}
	@PostMapping("updatetestresult")
	public String updateResult(@ModelAttribute("updateTestResults")CovidTestResult covidtestresult) {
		covidtestresultservice.save(covidtestresult);
		return "redirect:/testresultdetail/testresultlist";
	}

}
