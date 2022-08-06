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

import com.chainsys.covidtracker.dto.LocationTableDTO;
import com.chainsys.covidtracker.model.LocationTable;
import com.chainsys.covidtracker.service.LocationTableService;

@Controller
@RequestMapping("/locationdetail")
public class LocationTableController {
	@Autowired
	LocationTableService locationtableservice;

	@GetMapping("/locationlist")
	public String getLocationDetail(Model model) {
		List<LocationTable> locationtable = locationtableservice.getLocationDetail();
		model.addAttribute("alllocations", locationtable);
		return "locationlist-locationdetail";
	}

	@GetMapping("/findlocation")
	public String findById(@RequestParam("id") int id, Model model) {
		LocationTable locationtable = locationtableservice.findById(id);
		model.addAttribute("getLocations", locationtable);
		return "find-location-form";
	}

	@GetMapping("addlocationform")
	public String showLocation(Model model) {
		LocationTable locationtable = new LocationTable();
		model.addAttribute("addlocations", locationtable);
		return "add-location-form";
	}

	@PostMapping("/addlocation")
	public String addNewLocation(@ModelAttribute("addlocations") LocationTable locationtable) {
		locationtableservice.save(locationtable);
		return "redirect:/locationdetail/locationlist";
	}

	@GetMapping("/deletelocation")
	public String deleteLocation(@RequestParam("locationId") int id) {
		locationtableservice.deleteById(id);
		return "redirect:/locationdetail/locationlist";
	}

	@GetMapping("/updatelocationform")
	public String showUpdatelocation(@RequestParam("locationId") int id, Model model) {
		LocationTable locationtable = locationtableservice.findById(id);
		model.addAttribute("updatelocations", locationtable);
		return "update-location-form";
	}

	@PostMapping("updatelocation")
	public String updatelocation(@ModelAttribute("updatelocations") LocationTable locationtable) {
		locationtableservice.save(locationtable);
		return "redirect:/locationdetail/locationlist";
	}

	@GetMapping("/getpatientlocation")
	public String getPatientandLocation(@RequestParam("id") int id, Model model) {
		LocationTableDTO dto = locationtableservice.getLocationPatient(id);
		model.addAttribute("getpatientDetail", dto.getPatientDetail());
		model.addAttribute("LocationTablelist", dto.getLocationTable());
		return "list-patient-location";
	}

}
