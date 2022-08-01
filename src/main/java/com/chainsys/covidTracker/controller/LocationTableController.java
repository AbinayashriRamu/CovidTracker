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

import com.chainsys.covidTracker.pojo.LocationTable;
import com.chainsys.covidTracker.service.LocationTableService;


@Controller
@RequestMapping("/locationdetail")
public class LocationTableController {
	@Autowired
	LocationTableService ltservice;

	@GetMapping("/list")
	public String getLocationDetail(Model model) {
		List<LocationTable> lt = ltservice.getLocationDetail();
		model.addAttribute("alllocationdetail", lt);
		return "list-locationdetail";
	}
	@GetMapping("/findlocationid")
	public String findById(@RequestParam("id") int id,Model model) {
		LocationTable lt=ltservice.findById(id);
		model.addAttribute("getLocation",lt);
		return "find-location-id-form";
	}
	@GetMapping("addlocationform")
	public String showLocation(Model model) {
		LocationTable lt=new LocationTable();
		model.addAttribute("addlocationid", lt);
		return "add-location-form";
	}
	@PostMapping("/addlocation")
	public String addNewLocation(@ModelAttribute("addlocid") LocationTable lt) {
		ltservice.save(lt);
		return "redirect:/detail/locationdetail";
	}
	@GetMapping("/deleteLocation")
	public String deleteLocation(@RequestParam("location_id")int id) {
		ltservice.deleteById(id);
		return "redirect:/detail/locationdetail";
	}
	@GetMapping("/updateLocationform")
	public String showUpdatelocation(@RequestParam("location_id")int id,Model model) {
		LocationTable lt=ltservice.findById(id);
		model.addAttribute("updatelocation", lt);
		return "update-location-form";
	}
	@PostMapping("updatelocation")
	public String updatelocation(@ModelAttribute("updateLocation")LocationTable lt) {
		ltservice.save(lt);
		return "redirect:/detail/locationdetail";
	}

}
