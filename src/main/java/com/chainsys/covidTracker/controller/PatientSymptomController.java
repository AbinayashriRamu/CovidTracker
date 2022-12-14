package com.chainsys.covidtracker.controller;

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
		if (patientsymptom != null) {
			return "find-patient-symptom-form";
		} else

		{
			return "redirect:/home/Error";
		}
	}

	@GetMapping("addpatientsymptomform")
	public String showPatientsymptom(@RequestParam("id") long id, Model model) {
		PatientSymptom patientsymptom = new PatientSymptom();
		model.addAttribute("addPatientSymptoms", patientsymptom);
		patientsymptom.setAadharNumber(id);
		return "add-patient-symptom-form";
	}

	@PostMapping("/addpatientsymptom")
	public String addNewPatientsymptom(@Valid @ModelAttribute("addPatientSymptoms") PatientSymptom patientsymptom,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-patient-symptom-form";
		} else {
			patientsymptomservice.save(patientsymptom);
			long id = patientsymptom.getAadharNumber();
			return "redirect:/testresultdetail/addtestresultform?id=" + id;
		}
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
	public String updatepatientsymptom(@ModelAttribute("updatePatientSymptoms") PatientSymptom patientsymptoms,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-patient-symptom-form";
		} else {
			patientsymptomservice.save(patientsymptoms);
			return "successfulpage";
		}
	}

}
