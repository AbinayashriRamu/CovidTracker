package com.chainsys.covidtracker.controller;

import java.sql.Date;

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

import com.chainsys.covidtracker.model.CentreDetail;
import com.chainsys.covidtracker.model.CentreStaff;
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
		if (patientadmit != null) {
			return "find-patient-admit-form";
		} else {
			return "redirect:/home/Error";
		}
	}

	@GetMapping("addpatientadmitform")
	public String showPatientAdmitResult(Model model) {
		PatientAdmit patientadmit = new PatientAdmit();
		model.addAttribute("addPatientAdmits", patientadmit);
		return "add-patient-admit-form";
	}

	@PostMapping("/addpatientadmit")
	public String addNewPatientAdmit(@Valid @ModelAttribute("addPatientAdmits") PatientAdmit patientadmit,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-patient-admit-form";
		} else {
			try {
			patientadmitservice.save(patientadmit);
			return "successfulpage";
			}catch(Exception er) {
				return "add-patient-admit-form";
			}
		}
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

	public String updateResult(@ModelAttribute("updatePatientAdmits") PatientAdmit patientadmit, Errors errors) {
		if (errors.hasErrors()) {
			return "update-patient-admit-form";
		} else {
			patientadmitservice.save(patientadmit);
			return "successfulpage";
		}
	}

//-------------------------------functionalities---------------------

	// admitId->findpatdetail,admitdetail,centredtail,staffdetail

	@GetMapping("/getadmitcentrestaff")
	public String getAdmitCentreStaffById(@RequestParam("admitId") int admitId, Model model) {
		PatientAdmit patientadmit = patientadmitservice.getPatientAdmit(admitId);
		model.addAttribute("fetchByAdmitId", patientadmit);
		model.addAttribute("fetchStaffAdmitById", centrestaffservice.findByStaffId(patientadmit.getStaffId()));
		model.addAttribute("fetchCentreAdmitById", centredetailservice.findById(patientadmit.getCentreId()));
		model.addAttribute("fetchPatientDetailById",
				patientDetailService.getPatientDetail(patientadmit.getAadharNumber()));
		return "find-by-id-admit-centrestaff-form";
	}

	// staffId->findout admit details

	@GetMapping("/listadmitcenstaff")
	public String listAdmitCentreStaffById(@RequestParam("staffId") int staffId, Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByStaffId(staffId);
		model.addAttribute("fetchAllStaffAdmitById", patientadmit);
		return "find-by-admit-centrestaff-form";
	}

	// centreId->admitfindout

	@GetMapping("/listadmitcentredetail")
	public String listAdmitCentreDetailById(@RequestParam("centreId") int centreId, Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByCentreId(centreId);
		model.addAttribute("fetchAllCentreAdmitById", patientadmit);
		return "find-by-admit-centredetails-form";
	}

	// admitDate->find admit list that date

	@GetMapping("/ListPatientAdmitDetail")
	public String listpatientAdmitDate(@RequestParam("admitDate") Date admitDate, Model model) {
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByAdmitDate(admitDate);
		model.addAttribute("fetchByAdmitDate", patientadmit);
		return "find-by-list-patient-admit-date-form";
	}
	// centreid->centredetail,centreadmitdetail

	@GetMapping("/getCentreAdmitdetail")
	public String getCentreAdmitById(@RequestParam("centreId") int centreId, Model model) {
		CentreDetail centreDetail = centredetailservice.getCentreDetail(centreId);
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByCentreId(centreId);
		model.addAttribute("findByCentreId", centreDetail);
		model.addAttribute("fetchadmitDetail", patientadmit);
		return "find-by-list-id-centre-admit-form";
	}
	// staffId->staffdetail,admissionlist

	@GetMapping("/getStaffAdmitdetail")
	public String getStaffAdmitById(@RequestParam("staffId") int staffId, Model model) {
		CentreStaff centrestaff = centrestaffservice.findByStaffId(staffId);
		List<PatientAdmit> patientadmit = patientadmitservice.fetchAllByStaffId(staffId);
		model.addAttribute("findByStaffId", centrestaff);
		model.addAttribute("fetchadmitDetail", patientadmit);
		return "find-by-list-id-staff-admit-form";
	}

}
