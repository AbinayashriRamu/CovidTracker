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

import com.chainsys.covidTracker.pojo.CentreDetail;
import com.chainsys.covidTracker.service.CentreDetailService;

@Controller
@RequestMapping("/centredetail")
public class CentreDetailController {
	@Autowired
	CentreDetailService cdservice;

	@GetMapping("/list")
	public String getAllCentreDetail(Model model) {
		List<CentreDetail> cd = cdservice.getAllCentreDetail();
		model.addAttribute("allcentredetail", cd);
		return "list-centredetail";
	}
	@GetMapping("/findcenid")
	public String findById(@RequestParam("id") int id,Model model) {
		CentreDetail cd=cdservice.findById(id);
		model.addAttribute("getCentre",cd);
		return "find-centre-id-form";
	}
	@GetMapping("addcentreform")
	public String showCentre(Model model) {
		CentreDetail cd=new CentreDetail();
		model.addAttribute("addcenid", cd);
		return "add-centre-form";
	}
	@PostMapping("/addcentre")
	public String addNewCentre(@ModelAttribute("addcenid") CentreDetail cd) {
		cdservice.save(cd);
		return "redirect:/detail/centredetail";
	}
	@GetMapping("/deletecentre")
	public String deleteCentre(@RequestParam("center_id")int id) {
		cdservice.deleteById(id);
		return "redirect:/centredetail/list";
	}
	@GetMapping("/updatecentreform")
	public String showUpdateCentre(@RequestParam("centre_id")int id,Model model) {
		CentreDetail cd=cdservice.findById(id);
		model.addAttribute("updatecentre", cd);
		return "update-centre-form";
	}
	@PostMapping("updateCentre")
	public String updateCentre(@ModelAttribute("updatecentre")CentreDetail cd) {
		cdservice.save(cd);
		return "redirect:/centredetail/list";
	}

}
