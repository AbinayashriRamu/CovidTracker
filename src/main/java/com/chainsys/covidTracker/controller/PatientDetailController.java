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
import com.chainsys.covidtracker.model.PatientDetail;
import com.chainsys.covidtracker.service.PatientDetailService;


@Controller
@RequestMapping("/patientdetail")
public class PatientDetailController {
	@Autowired
	PatientDetailService patientdetailservice;

	@GetMapping("/patientlist")
	public String getAllPatientDetail(Model model) {
		List<PatientDetail> patientdetail = patientdetailservice.getPatientDetail();
		model.addAttribute("allPatientDetails", patientdetail);
		return "patientlist-patientdetail";
	}

	@GetMapping("/findpatientdetail")
	public String findById(@RequestParam("id") long id, Model model) {
		PatientDetail patientdetail = patientdetailservice.findById(id);
		model.addAttribute("getPatientDetails", patientdetail);
		return "find-Patient-detail-form";
	}

	@GetMapping("/addpatientdetailform")
	public String showPatient(Model model) {
		PatientDetail patientdetail = new PatientDetail();
		model.addAttribute("addPatientDetails", patientdetail);
		return "add-patient-detail-form";
	}

	@PostMapping("/addpatient")
	public String addNewPatient(@ModelAttribute("addPatientDetails") PatientDetail patientdetail) {
		patientdetailservice.save(patientdetail);
		return "redirect:/patientdetail/patientlist";
	}

	@GetMapping("/deletepatient")
	public String deletePatient(@RequestParam("aadharNo") long id) {
		patientdetailservice.deleteById(id);
		return "redirect:/patientdetail/patientlist";
	}

	@GetMapping("/updatepatientform")
	public String showUpdatePatient(@RequestParam("aadharNo") long id, Model model) {
		PatientDetail patientdetail = patientdetailservice.findById(id);
		model.addAttribute("updatePatientDetails", patientdetail);
		return "update-patient-detail-form";
	}

	@PostMapping("/updatepatient")
	public String updatepatient(@ModelAttribute("updatePatientDetails") PatientDetail patientdetail) {
		patientdetailservice.save(patientdetail);
		return "redirect:/patientdetail/patientlist";
	}
	


}
