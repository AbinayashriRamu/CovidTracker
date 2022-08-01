package com.chainsys.covidTracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.covidTracker.pojo.CentreStaff;
import com.chainsys.covidTracker.service.CentreStaffService;

@Controller
@RequestMapping("/staffdetail")
public class CentreStaffController {
	@Autowired
	CentreStaffService csservice;

	@GetMapping("/list")
	public String getAllStaffDetail(Model model) {
		List<CentreStaff> cs = csservice.getAllStaffDetail();
		model.addAttribute("allstaff", cs);
		return "list-staffdetail";
	}
	@GetMapping("/findcenid")
	public String findById(@RequestParam("id") int id,Model model) {
		CentreStaff cs=csservice.findById(id);
		model.addAttribute("getCenstaff",cs);
		return "find-centre-staff-form";
	}
	@GetMapping("addstaffform")
	public String showStaff(Model model) {
		CentreStaff cs=new CentreStaff();
		model.addAttribute("addcenstaffid", cs);
		return "add-centre-staff_form";
	}
	@PostMapping("/addstaff")
	public String addNewStaff(@ModelAttribute("addcenstaffid") CentreStaff cs) {
		csservice.save(cs);
		return "redirect:/staffdetail/list";
	}
	@GetMapping("/deleteStaff")
	public String deleteStaff(@RequestParam("center_id")int id) {
		csservice.deleteById(id);
		return "redirect:/staffdetail/list";
	}
	@GetMapping("/updatestaffform")
	public String showUpdateCentre(@RequestParam("centre_id")int id,Model model) {
		CentreStaff cs=csservice.findById(id);
		model.addAttribute("updatecenstaff", cs);
		return "update-centre-staff-form";
	}
	@PostMapping("updateStaff")
	public String updatestaff(@ModelAttribute("updatecenstaff")CentreStaff cs) {
		csservice.save(cs);
		return "redirect:/staffdetail/list";
	}

}
