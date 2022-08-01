package com.chainsys.covidTracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.covidTracker.pojo.CovidTestResult;
import com.chainsys.covidTracker.service.CovidTestResultService;

@Controller
@RequestMapping("/testdetail")
public class CovidTestResultController {
	@Autowired
	CovidTestResultService ctrservice;

	@GetMapping("/list")
	public String getAllTestResultDetail(Model model) {
		List<CovidTestResult> ctr = ctrservice.getAllTestResultDetail();
		model.addAttribute("alltestresult", ctr);
		return "list-testdetail";
	}
	@GetMapping("/findtestid")
	public String findById(@RequestParam("id")long id,Model model) {
		CovidTestResult ctr=ctrservice.findById(id);
		model.addAttribute("gettestid",ctr);
		return "find-test-id-form";
	}
	@GetMapping("addtestform")
	public String showTestResult(Model model) {
		CovidTestResult ctr=new CovidTestResult();
		model.addAttribute("addtestid", ctr);
		return "add-test-id_form";
	}
	@PostMapping("/addtestid")
	public String addNewTestId(@ModelAttribute("addtestId") CovidTestResult ctr) {
		ctrservice.save(ctr);
		return "redirect:/testdetail/list";
	}
	@GetMapping("/deletetestid")
	public String deleteTestResult(@RequestParam("test_id")int id) {
		ctrservice.deleteById(id);
		return "redirect:/testdetail/list";
	}
	@GetMapping("/updatetestresultform")
	public String showUpdateResult(@RequestParam("test_id")int id,Model model) {
		CovidTestResult ctr=ctrservice.findById(id);
		model.addAttribute("updatetestresult", ctr);
		return "update-Test-Result-form";
	}
	@PostMapping("updateTestresult")
	public String updateResult(@ModelAttribute("updatetestresult")CovidTestResult ctr) {
		ctrservice.save(ctr);
		return "redirect:/testdetail/list";
	}

}
