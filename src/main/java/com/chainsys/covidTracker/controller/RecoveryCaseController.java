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

import com.chainsys.covidTracker.model.RecoveryCase;
import com.chainsys.covidTracker.service.RecoveryCaseService;

@Controller
@RequestMapping("/recoverycasedetail")
public class RecoveryCaseController {
	@Autowired
	RecoveryCaseService recoverycaseservice;

	@GetMapping("/recoverycaselist")
	public String getAllrecoveryCaseDetail(Model model) {
		List<RecoveryCase> recoverycase = recoverycaseservice.getAllRecoveryCaseDetail();
		model.addAttribute("allRecoveryCases", recoverycase);
		return "recoverycaselist-recoverycasedetail";
	}

	@GetMapping("/findrecoverycase")
	public String findById(@RequestParam("id") long id, Model model) {
		RecoveryCase recoverycase = recoverycaseservice.findById(id);
		model.addAttribute("getRecoveryCases", recoverycase);
		return "find-recovery-case-form";
	}

	@GetMapping("addrecoverycaseform")
	public String showRecoveryCase(Model model) {
		RecoveryCase recoverycase = new RecoveryCase();
		model.addAttribute("addRecoveryCases", recoverycase);
		return "add-recovery-case-form";
	}

	@PostMapping("/addrecoverycase")
	public String addNewRecoveryCase(@ModelAttribute("addRecoveryCases") RecoveryCase recoverycase) {
		recoverycaseservice.save(recoverycase);
		return "redirect:/recoverycasedetail/recoverycaselist";
	}

	@GetMapping("/deleterecoverycase")
	public String deleteRecoveryCase(@RequestParam("aadharId") long id) {
		recoverycaseservice.deleteById(id);
		return "redirect:/casedetail/recoverycaselist";
	}

	@GetMapping("/updaterecoverycaseform")
	public String showUpdateRecovery(@RequestParam("aadharId") long id, Model model) {
		RecoveryCase recoverycase = recoverycaseservice.findById(id);
		model.addAttribute("updateRecoveryCases", recoverycase);
		return "update-recovery-case-form";
	}

	@PostMapping("updaterecoverycase")
	public String updateRecoveryCase(@ModelAttribute("updateRecoveryCases") RecoveryCase recoverycase) {
		recoverycaseservice.save(recoverycase);
		return "redirect:/recoverycasedetail/recoverycaselist";
	}

}
