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

import com.chainsys.covidtracker.model.PatientLocation;
import com.chainsys.covidtracker.service.PatientLocationService;

@Controller
@RequestMapping("/locationdetail")
public class PatientLocationController {
	@Autowired
	PatientLocationService patientlocationservice;

	@GetMapping("/locationlist")
	public String getLocationDetail(Model model) {
		List<PatientLocation> patientlocation = patientlocationservice.getLocationTable();
		model.addAttribute("alllocations", patientlocation);
		return "locationlist-locationdetail";
	}

	@GetMapping("/findlocation")
	public String findById(@RequestParam("id") int id, Model model) {
		PatientLocation patientlocation = patientlocationservice.findById(id);
		model.addAttribute("getLocations", patientlocation);
		if (patientlocation != null) {
			return "find-location-form";
		} else {
			return "redirect:/home/Error";
		}
	}

	@GetMapping("addlocationform")
	public String showLocation(Model model) {
		PatientLocation patientlocation = new PatientLocation();
		model.addAttribute("addlocations", patientlocation);
		return "add-location-form";
	}

	@PostMapping("/addlocation")
	public String addNewLocation(@Valid @ModelAttribute("addlocations") PatientLocation patientlocation,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-location-form";
		} else {
			try {
			patientlocationservice.save(patientlocation);
			return "redirect:/centredetail/addcentreform";
			}catch(Exception er){
				return  "add-location-form";
			}
		}
	}

	@GetMapping("/deletelocation")
	public String deleteLocation(@RequestParam("pinCode") int id) {
		patientlocationservice.deleteById(id);
		return "redirect:/locationdetail/locationlist";
	}

	@GetMapping("/updatelocationform")
	public String showUpdatelocation(@RequestParam("pinCode") int id, Model model) {
		PatientLocation patientlocation = patientlocationservice.findById(id);
		model.addAttribute("updatelocations", patientlocation);
		return "update-location-form";
	}

	@PostMapping("updatelocation")
	public String updatelocation(@ModelAttribute("updatelocations") PatientLocation patientlocation, Errors errors) {
		if (errors.hasErrors()) {
			return "update-location-form";
		} else {
			patientlocationservice.save(patientlocation);
			return "successfulpage";
		}
	}

}
