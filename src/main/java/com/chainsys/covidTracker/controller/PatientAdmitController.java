package com.chainsys.covidtracker.controller;

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

import com.chainsys.covidtracker.model.CentreDetail;
import com.chainsys.covidtracker.model.PatientAdmit;
import com.chainsys.covidtracker.service.CentreDetailService;
import com.chainsys.covidtracker.service.CentreStaffService;
import com.chainsys.covidtracker.service.PatientAdmitService;
import com.chainsys.covidtracker.service.PatientDetailService;

@Controller
@RequestMapping("/patientadmitdetail")
public class PatientAdmitController {
	@Autowired
	PatientAdmitService patientadmitservice;
    @Autowired
    CentreStaffService centrestaffservice;
    @Autowired
    CentreDetailService centredetailservice;
    @Autowired
    PatientDetailService patientDetailService;
    
	@GetMapping("/patientadmitlist")
	public String getAllPatientAdmitDetail(Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.getPatientAdmitDetail();
		model.addAttribute("allAdmitResults", patientadmit);
		return "patientadmitlist-patientadmitdetail";
	}

	@GetMapping("/findpatientadmit")
	public String findById(@RequestParam("id") int id, Model model) {
		PatientAdmit patientadmit = patientadmitservice.findById(id);
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
	public String deletePatientAdmitResult(@RequestParam("id") int id) {
		patientadmitservice.deleteById(id);
		return "redirect:/patientadmitdetail/patientadmitlist";
	}

	@GetMapping("/updatepatientadmitform")
	public String showUpdateResult(@RequestParam("id") int id, Model model) {
		PatientAdmit patientadmit = patientadmitservice.findById(id);
		model.addAttribute("updatePatientAdmits", patientadmit);
		return "update-patient-admit-form";
	}

	@PostMapping("updatepatientadmit")
	public String updateResult(@ModelAttribute("updatePatientAdmits") PatientAdmit patientadmit) {
		patientadmitservice.save(patientadmit);
		return "redirect:/patientadmitdetail/patientadmitlist";
	}
//	--------------------------------------
	@GetMapping("/getadmitcentrestaff")
	public String getAdmitCentreStaffById(@RequestParam("admitId") int admitId, Model model) {
		PatientAdmit patientadmit = patientadmitservice.getPatientAdmit(admitId);
		model.addAttribute("fetchByAdmitId", patientadmit);
		model.addAttribute("fetchStaffAdmitById", centrestaffservice.findById(patientadmit.getStaffId()));
		model.addAttribute("fetchCentreAdmitById", centredetailservice.findById(patientadmit.getCentreId()));
		model.addAttribute("fetchPatientDetailById",patientDetailService.getPatientDetail(patientadmit.getAadharNo()));
		return "find-by-id-admit-centrestaff-form";
	}


	@GetMapping("/listadmitcenstaff")
	public String listAdmitCentreStaffById(@RequestParam("staffId") int staffId, Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByStaffId(staffId);
		model.addAttribute("fetchAllStaffAdmitById", patientadmit);
		return "find-by-admit-centrestaff-form";
	}
	

	@GetMapping("/listadmitcentredetail")
	public String listAdmitCentreDetailById(@RequestParam("centreId") int centreId, Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByCentreId(centreId);
		// model.addAttribute("fetchByCenteId", patientdetail);
		model.addAttribute("fetchAllCentreAdmitById", patientadmit);
		return "find-by-admit-centredetails-form";
	}
	

}
