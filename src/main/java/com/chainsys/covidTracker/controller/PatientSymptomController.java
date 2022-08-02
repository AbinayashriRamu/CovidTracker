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

import com.chainsys.covidTracker.pojo.PatientSymptom;
import com.chainsys.covidTracker.service.PatientSymptomService;

@Controller
@RequestMapping("/patsymdetail")
public class PatientSymptomController {
	@Autowired
	PatientSymptomService psservice;

	@GetMapping("/list")
	public String getAllPatsymDetail(Model model) {
		List<PatientSymptom> ps = psservice.getPatSymptomDetail();
		model.addAttribute("allpatientsymp", ps);
		return "list-patsymdetail";
	}

	@GetMapping("/findpatsymid")
	public String findById(@RequestParam("id") long id, Model model) {
		PatientSymptom ps = psservice.findById(id);
		model.addAttribute("getPatientsymp", ps);
		return "find-Patientsymp-id-form";
	}

	@GetMapping("addpatientsympform")
	public String showPatientsymp(Model model) {
		PatientSymptom ps = new PatientSymptom();
		model.addAttribute("addpantientsympid", ps);
		return "add-patientsymp-id-form";
	}

	@PostMapping("/addPatientsymp")
	public String addNewPatientsymp(@ModelAttribute("addpatientsympid") PatientSymptom ps) {
		psservice.save(ps);
		return "redirect:/patsymdetail/list";
	}

	@GetMapping("/deletePatientsymp")
	public String deletepatientsymp(@RequestParam("aadhar_no") long id) {
		psservice.deleteById(id);
		return "redirect:/patsymdetail/list";
	}

	@GetMapping("/updatePatientdsympform")
	public String showUpdatePatientsymp(@RequestParam("aadhar_no") long id, Model model) {
		PatientSymptom ps = psservice.findById(id);
		model.addAttribute("updatepatientsympid", ps);
		return "update-patientsymp-id-form";
	}

	@PostMapping("updatePatientsymp")
	public String updatepatientsymp(@ModelAttribute("updatepatient") PatientSymptom ps) {
		psservice.save(ps);
		return "redirect:/patsymdetail/list";
	}

}
