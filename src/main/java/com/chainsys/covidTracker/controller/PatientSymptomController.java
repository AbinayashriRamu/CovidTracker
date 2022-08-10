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

import com.chainsys.covidtracker.model.PatientSymptom;
import com.chainsys.covidtracker.service.PatientSymptomService;

@Controller
@RequestMapping("/patientsymptomdetail")
public class PatientSymptomController {
	@Autowired
	PatientSymptomService patientsymptomservice;

	@GetMapping("/patientsymptomlist")
	public String getAllPatientsymptomDetail(Model model) {
		List<PatientSymptom> patientsymptom = patientsymptomservice.getPatientSymptomDetail();
		model.addAttribute("allPatientSymptoms", patientsymptom);
		return "patientsymptomlist-patientsymptomdetail";
	}

	@GetMapping("/findpatatientsymptomid")
	public String findById(@RequestParam("id") long id, Model model) {
		PatientSymptom patientsymptom = patientsymptomservice.findById(id);
		model.addAttribute("getPatientSymptoms", patientsymptom);
		return "find-patient-symptom-form";
	}

	@GetMapping("addpatientsymptomform")
	public String showPatientsymptom(Model model) {
		PatientSymptom patientsymptom = new PatientSymptom();
		model.addAttribute("addPatientSymptoms", patientsymptom);
		return "add-patient-symptom-form";
	}

	@PostMapping("/addpatientsymptom")
	public String addNewPatientsymptom(@ModelAttribute("addPatientSymptoms") PatientSymptom Patientsymptom) {
		patientsymptomservice.save(Patientsymptom);
		return "redirect:/patientsymptomdetail/patientsymptomlist";
	}

	@GetMapping("/deletepatientsymptom")
	public String deletepatientsymptom(@RequestParam("observationId") long id) {
		patientsymptomservice.deleteById(id);
		return "redirect:/patientsymptomdetail/patientsymptomlist";
	}

	@GetMapping("/updatepatientsymptomform")
	public String showUpdatePatientsymp(@RequestParam("observationId") long id, Model model) {
		PatientSymptom patientsymptom = patientsymptomservice.findById(id);
		model.addAttribute("updatePatientSymptoms", patientsymptom);
		return "update-patient-symptom-form";
	}

	@PostMapping("/updatepatientsymptom")
	public String updatepatientsymptom(@ModelAttribute("updatePatientSymptoms") PatientSymptom patientsymptom) {
		patientsymptomservice.save(patientsymptom);
		return "redirect:/patientsymptomdetail/patientsymptomlist";
	}

}
