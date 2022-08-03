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

import com.chainsys.covidTracker.model.CentreDetail;
import com.chainsys.covidTracker.service.CentreDetailService;

@Controller
@RequestMapping("/centredetail")
public class CentreDetailController {
	@Autowired
	CentreDetailService centredetailservice;

	@GetMapping("/centrelist")
	public String getAllCentreDetail(Model model) {
		List<CentreDetail> centredetail = centredetailservice.getAllCentreDetail();
		model.addAttribute("allcentredetails", centredetail);
		return "centrelist-centredetail";
	}
	@GetMapping("/findcentre")
	public String findById(@RequestParam("id") int id,Model model) {
		CentreDetail centredetail=centredetailservice.findById(id);
		model.addAttribute("getcentres",centredetail);
		return "find-centredetail-form";
	}
	@GetMapping("/addcentreform")
	public String showCentreDetail(Model model) {
		CentreDetail centredetail=new CentreDetail();
		model.addAttribute("addcentres", centredetail);
		return "add-centredetail-form";
	}
	@PostMapping("/addcentre")
	public String addNewCentreDetail(@ModelAttribute("addcentres") CentreDetail centredetail) {
		centredetailservice.save(centredetail);
		return "redirect:/centredetail/centrelist";
	}
	@GetMapping("/deletecentre")
	public String deleteCentreDetail(@RequestParam("centreId")int id) {
		centredetailservice.deleteById(id);
		return "redirect:/centredetail/centrelist";
	}
	@GetMapping("/updatecentreform")
	public String showUpdateCentreDetail(@RequestParam("centreId")int id,Model model) {
		CentreDetail centredetail=centredetailservice.findById(id);
		model.addAttribute("updatecentres", centredetail);
		return "update-centredetail-form";
	}
	@PostMapping("/updatecentre")
	public String updateCentreDetail(@ModelAttribute("updatecentres")CentreDetail centredetail) {
		centredetailservice.save(centredetail);
		return "redirect:/centredetail/centrelist";
	}

}
