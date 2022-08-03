package com.chainsys.covidTracker.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.chainsys.covidTracker.compositekey.PatientCentreCompositeKey;
import com.chainsys.covidTracker.model.PatientCentreDetail;
import com.chainsys.covidTracker.service.PatientCentreDetailService;


@Controller
@RequestMapping("/patientcentredetail")
public class PatientCentreDetailController {
	@Autowired
	PatientCentreDetailService patientcentredetailservice;

	@GetMapping("/patientcentrelist")
	public String getAllPatientCentre(Model model) {
		List<PatientCentreDetail> patientcentredetail = patientcentredetailservice.getPatientCentreDetail();
		model.addAttribute("allPatientCentreResults", patientcentredetail);
		return "patientlist-patientcentredetail";
	}

	@GetMapping("/findpatientcentredetail")
	public String findById(@RequestParam("id") long id, @RequestParam("cenid") int cenid, Model model) {
		PatientCentreCompositeKey patientcentrecomposit = new PatientCentreCompositeKey(id, cenid);
		Optional<PatientCentreDetail> patientcentredetail = patientcentredetailservice.findById(patientcentrecomposit);
		model.addAttribute("getPatientCentreDetails", patientcentredetail);
		return "find-patient-centre-form";
	}

	@GetMapping("/addpatientcentreform")
	public String showPatientCentreResult(Model model) {
		PatientCentreDetail patientcentredetail = new PatientCentreDetail();
		model.addAttribute("addPatientCentreDetails", patientcentredetail);
		return "add-patient-centre_form";
	}

	@PostMapping("/addpatientcentredetail")
	public String addNewPatientCentre(@ModelAttribute("addPatientCentreDetails") PatientCentreDetail patientcentredetail) {
		patientcentredetailservice.save(patientcentredetail);
		return "redirect:/patientcentredetail/patientcentrelist";
	}

	@GetMapping("/deletepatientcentredetail")
	public String deletePatientCentre(@RequestParam("id") long id, @RequestParam("cenid") int cenid) {
		PatientCentreCompositeKey patientcentrecomposit = new PatientCentreCompositeKey(id, cenid);
		patientcentredetailservice.deleteById(patientcentrecomposit);
		return "redirect:/patientcentredetail/patientcentrelist";
	}

	@GetMapping("/updatepatientcentreform")
	public String showUpdatepantientcentre(@RequestParam("id") long id, @RequestParam("cenid") int cenid, Model model) {
		PatientCentreCompositeKey patientcentrecomposit = new PatientCentreCompositeKey(id, cenid);
		Optional<PatientCentreDetail> patientcentredetail = patientcentredetailservice.findById(patientcentrecomposit);
		model.addAttribute("updatePatientCentreDetails", patientcentredetail);
		return "update-patient-centre-form";
	}

	@PostMapping("updatepatientcentre")
	public String updateResult(@ModelAttribute("updatePatientCentreDetails") PatientCentreDetail patientcentredetail) {
		patientcentredetailservice.save(patientcentredetail);
		return "redirect:/patientcentredetail/patientcentrelist";
	}

}
