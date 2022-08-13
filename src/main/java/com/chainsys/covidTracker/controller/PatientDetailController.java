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
import com.chainsys.covidtracker.model.PatientDetail;
import com.chainsys.covidtracker.service.PatientLocationService;
import com.chainsys.covidtracker.service.PatientDetailService;

@Controller
@RequestMapping("/patientdetail")
public class PatientDetailController {
	@Autowired
	PatientDetailService patientdetailservice;
	@Autowired
	PatientLocationService patientlocationservice;

	@GetMapping("/patientlist")
	public String getAllPatientDetail(Model model) {
		List<PatientDetail> patientdetail = patientdetailservice.getPatientDetail();
		model.addAttribute("allPatientDetails", patientdetail);
		return "patientlist-patientdetail";
	}

	@GetMapping("/findpatientdetail")
	public String findById(@RequestParam("id") long id, Model model) {
		PatientDetail patientdetail = patientdetailservice.getPatientDetail(id);
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
	public String addNewPatient(@Valid @ModelAttribute("addPatientDetails") PatientDetail patientdetail,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-patient-detail-form";
		} else {
			patientdetailservice.save(patientdetail);
			return "redirect:/patientdetail/patientlist";
		}
	}

	@GetMapping("/deletepatient")
	public String deletePatient(@RequestParam("aadharNumber") long id) {
		patientdetailservice.deleteById(id);
		return "redirect:/patientdetail/patientlist";
	}

	@GetMapping("/updatepatientform")
	public String showUpdatePatient(@RequestParam("aadharNumber") long id, Model model) {
		PatientDetail patientdetail = patientdetailservice.getPatientDetail(id);
		model.addAttribute("updatePatientDetails", patientdetail);
		return "update-patient-detail-form";
	}

	@PostMapping("/updatepatient")
	public String updatepatient(@ModelAttribute("updatePatientDetails") PatientDetail patientdetail) {
		patientdetailservice.save(patientdetail);
		//System.out.println(patientdetailservice.deadCaseCount());
		return "redirect:/patientdetail/patientlist";
	}
	
	//---------------------------------functionalities-----------------------------------
	//aadharnumber->patientdetail,patientlocation
	@GetMapping("/getpatientlocation")
	public String getPatientLocationById(@RequestParam("aadharNumber") long aadharNumber, Model model) {
		PatientDetail patientdetail = patientdetailservice.getPatientDetail(aadharNumber);
		model.addAttribute("fetchByaadharNo", patientdetail);
		model.addAttribute("fetchPatientloctionById", patientlocationservice.findById(patientdetail.getPinCode()));
		return "find-by-id-patient-location-form";
	}
	
	//pincode->location,patientdetails

	@GetMapping("/listpatientBylocation")
	public String listPatientLocationById(@RequestParam("pinCode") int pinCode, Model model) {
		List<PatientDetail> patientdetail = patientdetailservice.fetchAllByPinCode(pinCode);
		model.addAttribute("fetchPlaceByPincode", patientlocationservice.findById(pinCode));
		model.addAttribute("fetchAllPatientloctionById", patientdetail);
		return "find-by-patient-location-form";
	}

}
