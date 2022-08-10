package com.chainsys.covidtracker.controller;

import java.util.Date;
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
import com.chainsys.covidtracker.model.PatientDetail;
import com.chainsys.covidtracker.service.CovidTestResultService;
import com.chainsys.covidtracker.service.PatientDetailService;

@Controller
@RequestMapping("/testresultdetail")
public class CovidTestResultController {
	@Autowired
	CovidTestResultService covidtestresultservice;
    @Autowired
    PatientDetailService patientdetailservice;
    
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
//	@PostMapping("/getTestResultDetail")
//	public String getCovidTestDate(@RequestParam("TestingDate")Date testingDate,Model model) {
//		List<PatientDetail> patientdetail=patientdetailservice.fetchAllByTestingDate(testingDate);
//		CovidTestResult covidtestresult=covidtestresultservice.fetchAllByTestingDate(testingDate);
//		model.addAttribute("fetchBytestdate",covidtestresult);
//		model.addAttribute("fetchByPatientDetail",patientdetail);
//		return "find-by-list-testing-date-form";
//	}
//	@GetMapping("/getPatientDetails")
//	public String getPatientDetailById(@RequestParam ("TestResult")String result,Model model) 
//	{
//		List<CovidTestResult> covidtestresult=covidtestresultservice.findByTestResult(result);
//		model.addAttribute("fetchTestResult", covidtestresult);
//		List<PatientDetail>patientdetail=patientdetailservice.fetchAllByAadharNo(aadharNo);
//		model.addAttribute("listpatientdetail", patientdetail);
//		return "find-list-id-result";
//	}
	
	
	

}
