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

import com.chainsys.covidTracker.pojo.PatientDetail;
import com.chainsys.covidTracker.service.PatientDetailService;

@Controller
@RequestMapping("/patientdetail")
public class PatientDetailController {
	@Autowired
	PatientDetailService pdservice;

	@GetMapping("/list")
	public String getAllPatientDetail(Model model) {
		List<PatientDetail> pd = pdservice.getPatientDetail();
		model.addAttribute("allpatient", pd);
		return "list-patientdetail";
	}

	@GetMapping("/findpatientid")
	public String findById(@RequestParam("id") long id, Model model) {
		PatientDetail pd = pdservice.findById(id);
		model.addAttribute("getPatient", pd);
		return "find-Patient-id-form";
	}

	@GetMapping("addpatientform")
	public String showPatient(Model model) {
		PatientDetail pd = new PatientDetail();
		model.addAttribute("addpantientid", pd);
		return "add-patient-id-form";
	}

	@PostMapping("/addPatient")
	public String addNewPatient(@ModelAttribute("addpatientid") PatientDetail pd) {
		pdservice.save(pd);
		return "redirect:/patientdetail/list";
	}

	@GetMapping("/deletePatient")
	public String deleteStaff(@RequestParam("patient_id") long id) {
		pdservice.deleteById(id);
		return "redirect:/patientdetail/list";
	}

	@GetMapping("/updatePatientform")
	public String showUpdatePatient(@RequestParam("patient_id") long id, Model model) {
		PatientDetail pd = pdservice.findById(id);
		model.addAttribute("updatepatientid", pd);
		return "update-patient-id-form";
	}

	@PostMapping("updatePatient")
	public String updatepatient(@ModelAttribute("updatepatient") PatientDetail pd) {
		pdservice.save(pd);
		return "redirect:/patientdetail/list";
	}

}
