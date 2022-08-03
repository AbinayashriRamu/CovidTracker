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

import com.chainsys.covidTracker.compositekey.PatientAdmitCompositeKey;
import com.chainsys.covidTracker.model.PatientAdmit;
import com.chainsys.covidTracker.service.PatientAdmitService;

@Controller
@RequestMapping("/patientadmitdetail")
public class PatientAdmitController {
	@Autowired
	PatientAdmitService patientadmitservice;

	@GetMapping("/patientadmitlist")
	public String getAllPatientAdmitDetail(Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.getPatientAdmitDetail();
		model.addAttribute("allAdmitResults", patientadmit);
		return "patientadmitlist-patientadmitdetail";
	}

	@GetMapping("/findpatientadmit")
	public String findById(@RequestParam("id") long id, @RequestParam("cenid") int cenid, Model model) {
		PatientAdmitCompositeKey patientadmitcomposit = new PatientAdmitCompositeKey(id, cenid);
		Optional<PatientAdmit> patientadmit = patientadmitservice.findById(patientadmitcomposit);
		model.addAttribute("getPatientAdmits", patientadmit);
		return "find-patient-admit-form";
	}

	@GetMapping("addpatientadmitform")
	public String showPatientAdmitResult(Model model) {
		PatientAdmit patientadmit = new PatientAdmit();
		model.addAttribute("addPatientAdmits", patientadmit);
		return "add-patient-admit-form";
	}

	@PostMapping("/addpatientadmit")
	public String addNewPatientAdmit(@ModelAttribute("addPatientAdmits") PatientAdmit patientadmit) {
		patientadmitservice.save(patientadmit);
		return "redirect:/patientadmitdetail/patientadmitlist";
	}

	@GetMapping("/deletepatientadmit")
	public String deletePatientAdmitResult(@RequestParam("id") long id, @RequestParam("cenid") int cenid) {
		PatientAdmitCompositeKey patientadmitcomposit = new PatientAdmitCompositeKey(id, cenid);
		patientadmitservice.deleteById(patientadmitcomposit);
		return "redirect:/patientadmitdetail/patientadmitlist";
	}

	@GetMapping("/updatepatientadmitform")
	public String showUpdateResult(@RequestParam("id") long id, @RequestParam("cenid") int cenid, Model model) {
		PatientAdmitCompositeKey patientadmitcomposit = new PatientAdmitCompositeKey(id, cenid);
		Optional<PatientAdmit> patientadmit = patientadmitservice.findById(patientadmitcomposit);
		model.addAttribute("updatePatientAdmits", patientadmit);
		return "update-patient-admit-form";
	}

	@PostMapping("updatepatientadmit")
	public String updateResult(@ModelAttribute("updatePatientAdmits") PatientAdmit patientadmit) {
		patientadmitservice.save(patientadmit);
		return "redirect:/patientadmitdetail/patientadmitlist";
	}

}
