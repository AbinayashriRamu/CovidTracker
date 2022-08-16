package com.chainsys.covidtracker.controller;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.covidtracker.model.CovidTestResult;
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
	public String findById(@RequestParam("id") long id, Model model) {
		CovidTestResult covidtestresult = covidtestresultservice.findById(id);
		model.addAttribute("getTestResults", covidtestresult);
		return "find-test-result-form";
	}

	@GetMapping("addtestresultform")
	public String showTestResult(Model model) {
		CovidTestResult covidtestresult = new CovidTestResult();
		model.addAttribute("addTestResults", covidtestresult);
		return "add-test-result-form";
	}

	@PostMapping("/addtestresult")
	public String addNewTestResult(@Valid @ModelAttribute("addTestResults") CovidTestResult covidtestresult,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-test-result-form";
		} else {
			covidtestresultservice.save(covidtestresult);
			return "successfulpage";
		}
	}

	@GetMapping("/deletetestresult")
	public String deleteTestResult(@RequestParam("testId") long id) {
		covidtestresultservice.deleteById(id);
		return "redirect:/testresultdetail/testresultlist";
	}

	@GetMapping("/updatetestresultform")
	public String showUpdateTestResult(@RequestParam("testId") long id, Model model) {
		CovidTestResult covidtestresult = covidtestresultservice.findById(id);
		model.addAttribute("updateTestresults", covidtestresult);
		return "update-Test-Result-form";
	}

	@PostMapping("updatetestresult")
	public String updateResult(@ModelAttribute("updateTestresults") CovidTestResult covidtestresult) {
		covidtestresultservice.save(covidtestresult);
		CovidTestResult covidtestresults = covidtestresultservice.getTestIdAndTestResult(covidtestresult.getTestId(),
				covidtestresult.getTestResult());
//		System.out.println(covidtestresultservice.confirmedCaseCount());
		if ("Positive".equals(covidtestresults.getTestResult())) {
			return "redirect:/patientadmitdetail/addpatientadmitform";
		} else {
			return "successfulpage";
		}

	}

	// ---------------------functionalities-----------------------------------
	// tstDate->positivecase or negative case find that specfic date

	@GetMapping("/getTestResultDetail")
	public String getCovidTestDate(@RequestParam("TestingDate") Date testingDate, @RequestParam("Result") String result,
			Model model) {
		List<CovidTestResult> covidtestresult = covidtestresultservice.fetchAllByTestingDateAndResult(testingDate,
				result);
		model.addAttribute("fetchBytestdateandresult", covidtestresult);
		return "find-by-list-testing-date-form";
	}
}
