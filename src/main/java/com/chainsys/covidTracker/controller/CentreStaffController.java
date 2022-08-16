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

import com.chainsys.covidtracker.model.CentreStaff;
import com.chainsys.covidtracker.service.CentreStaffService;

@Controller
@RequestMapping("/centrestaffdetail")
public class CentreStaffController {
	@Autowired
	CentreStaffService centrestaffservice;

	@GetMapping("/centrestafflist")
	public String getAllCentreStaff(Model model) {
		List<CentreStaff> centrestaff = centrestaffservice.getAllCentreStaff();
		model.addAttribute("allCentreStaffs", centrestaff);
		return "centrestafflist-centrestaffdetail";
	}

	@GetMapping("/findcentrestaff")
	public String findById(@RequestParam("id") int id, Model model) {
		CentreStaff centrestaff = centrestaffservice.findByStaffId(id);
		model.addAttribute("getAllCentreStaffs", centrestaff);
		return "find-centre-staff-form";
	}

	@GetMapping("addcentrestaffform")
	public String showCentreStaff(Model model) {
		CentreStaff centrestaff = new CentreStaff();
		model.addAttribute("addcentrestaffs", centrestaff);
		return "add-centre-staff_form";
	}

	@PostMapping("/addcentrestaff")
	public String addNewCentreStaff(@Valid @ModelAttribute("addcentrestaffs") CentreStaff centrestaff, Errors errors) {
		if (errors.hasErrors()) {
			return "add-centre-staff_form";
		} else {
			centrestaffservice.save(centrestaff);
			return "successfulpage";
		}
	}

	@GetMapping("/deletecentrestaff")
	public String deleteCentreStaff(@RequestParam("staffId") int id) {
		centrestaffservice.deleteById(id);
		return "redirect:/centrestaffdetail/centrestafflist";
	}

	@GetMapping("/updatecentrestaffform")
	public String showUpdateCentre(@RequestParam("staffId") int id, Model model) {
		CentreStaff centrestaff = centrestaffservice.findByStaffId(id);
		model.addAttribute("abc", centrestaff);
		return "update-centre-staff-form";
	}

	@PostMapping("updatecentrestaff")
	public String updatecentrestaff(@ModelAttribute("abc") CentreStaff centrestaff,Errors errors) {
		if(errors.hasErrors()) {
			return "update-centre-staff-form";
		}else {
		centrestaffservice.save(centrestaff);
		return "successfulpage";
	}
		}

}
