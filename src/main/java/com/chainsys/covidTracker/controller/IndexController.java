package com.chainsys.covidtracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController {

	@GetMapping("/index")
	public String getIndex(Model model) {
		return "index";
	}

	@GetMapping("/ForAllTables")
	public String staffAcess(Model model) {
		return "addalltables";
	}
	
//	@GetMapping("/ListTable")
//	public String stafflistaccess(Model model) {
//		return "listtables";
//	}

//	@GetMapping("/ForUpdateTable")
//	public String staffUpdate(Model model) {
//		return "updatetables";
//	}

	@GetMapping("/ForViewList")
	public String staffView(Model model) {
		return "viewdetails";
	}
	
	@GetMapping("/Count")
	public String countview(Model model) {
		return "countcase";
	}

}
