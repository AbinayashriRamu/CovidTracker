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

import com.chainsys.covidtracker.model.CentreDetail;
import com.chainsys.covidtracker.service.CentreDetailService;
import com.chainsys.covidtracker.service.PatientLocationService;

@Controller
@RequestMapping("/centredetail")
public class CentreDetailController {
	@Autowired
	CentreDetailService centredetailservice;
	@Autowired
	PatientLocationService patientlocationservice;

	@GetMapping("/centrelist")
	public String getAllCentreDetail(Model model) {
		List<CentreDetail> centredetail = centredetailservice.getAllCentreDetail();
		model.addAttribute("allcentredetails", centredetail);
		return "centrelist-centredetail";
	}

	@GetMapping("/findcentre")
	public String findById(@RequestParam("id") int id, Model model) {
		CentreDetail centredetail = centredetailservice.findById(id);
		model.addAttribute("getcentres", centredetail);
		return "find-centredetail-form";
	}

	@GetMapping("/addcentreform")
	public String showCentreDetail(Model model) {
		CentreDetail centredetail = new CentreDetail();
		model.addAttribute("addcentres", centredetail);
		return "add-centredetail-form";
	}

	@PostMapping("/addcentre")
	public String addNewCentreDetail(@Valid @ModelAttribute("addcentres") CentreDetail centredetail, Errors errors) {
		if (errors.hasErrors()) {
			return "add-centredetail-form";
		} else {
			centredetailservice.save(centredetail);
			return "successfulpage";
		}
	}

	@GetMapping("/deletecentre")
	public String deleteCentreDetail(@RequestParam("centreId") int id) {
		centredetailservice.deleteById(id);
		return "redirect:/centredetail/centrelist";
	}

	@GetMapping("/updatecentreform")
	public String showUpdateCentreDetail(@RequestParam("centreId") int id, Model model) {
		CentreDetail centredetail = centredetailservice.findById(id);
		model.addAttribute("updatecentres", centredetail);
		return "update-centredetail-form";
	}

	@PostMapping("/updatecentre")
	public String updateCentreDetail(@ModelAttribute("updatecentres") CentreDetail centredetail, Errors errors) {
		if (errors.hasErrors()) {
			return "update-centredetail-form";
		} else {
			centredetailservice.save(centredetail);
			return "successfulpage";
		}
	}
//-----------------------------functionalities-----------------------------

	// centreid->centredetail,centrelocation

	@GetMapping("/getcentrelocation")
	public String getCentreLocationById(@RequestParam("centreId") int centreId, Model model) {
		CentreDetail centredetail = centredetailservice.getCentreDetail(centreId);
		model.addAttribute("fetchByCentrId", centredetail);
		model.addAttribute("fetchCentreloctionById", patientlocationservice.findById(centredetail.getPinCode()));
		return "find-by-id-centre-location-form";
	}

	// pincode->centredetail

	@GetMapping("/listcentreBylocation")
	public String listCentreLocationById(@RequestParam("pinCode") int pinCode, Model model) {
		List<CentreDetail> centredetail = centredetailservice.fetchAllByPinCode(pinCode);
		model.addAttribute("fetchAllCentreloctionById", centredetail);
		return "find-by-centre-location-form";
	}

}
