package com.project.ElectricityBillingSystem.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.ElectricityBillingSystem.Repository.AccountRepository;
import com.project.ElectricityBillingSystem.models.Account;

import com.project.ElectricityBillingSystem.service.ElectricService;

import jakarta.validation.Valid;

@Controller
public class MyController {
	
	@Autowired
	ElectricService service;
	
	@GetMapping("/")
	public String redirectToHome() {
		return "home.jsp";
	}
	
	@GetMapping("new_connection")
	public String newConnectionPage(@ModelAttribute Account account) {
		return "newconnection.jsp";
	}
	
	@PostMapping("/new_connection")
	public String newconnection(@Valid Account account, BindingResult result, Model model) {
		String view ="";
		boolean validDetails=true;
		if(result.hasErrors()) { 
			view =  "newconnection.jsp";
			validDetails = false;
		}
		if(validDetails) {
			account.setMeterno(account.generator());
			String num =account.getMeterno();
			model.addAttribute("meterno", num);
			service.makeNewConnection(account);
			view ="accountcreated.jsp";
		}
		return view;
	}
	
	@GetMapping("add_reading")
	public String showReadingPage() {
		return"add_reading.jsp";
	}
	
	@PostMapping("add_reading")
	public String addReadingPage(@RequestParam String meterno, @RequestParam int reading) {
		if(service.addReading(reading, meterno)) {
			return"Reading_Updated.jsp";
		}
		else {
			return "meternotfound.jsp";
		}
		
	}
	
	@GetMapping("generate_bill")
	public String billGeneration() {
		return "generate_bill.jsp";
	}
	
	@PostMapping("generate_bill")
	public String billgenerationpost(@RequestParam String meterno, Model model) {
		if(service.billgenerate(meterno)) {
			Account k = service.getbill(meterno);
			model.addAttribute("due",k.getDue());
			return"bill_generated.jsp";
		}
		else {
			return "meternotfound.jsp";
		}
	}
	
	@GetMapping("Know_your_bill")
	public String billknow() {
		return "Know_your_bill.jsp";
	}
	
	@PostMapping("Know_your_bill")
	public String knowbill(@RequestParam String meterno, Model model) {
		Account k = service.getbill(meterno);
		if(k!=null) {
			int num = k.getReading() - k.getOreading();		    
			model.addAttribute("metern",k.getMeterno() );
		    model.addAttribute("name",k.getName());
		    model.addAttribute("sectorno",k.getSectorno());
		    model.addAttribute("oreading",k.getOreading());
		    model.addAttribute("reading",k.getReading());
		    model.addAttribute("units",num);
		    model.addAttribute("due",k.getDue());
		    
			return "bill.jsp";	
		}
		else {
			return "meternotfound.jsp";
		}
	} 
	@GetMapping("askUpdate")
	public String Updatedetails() {
		return "askUpdate.jsp";
	}
	@PostMapping("askUpdate")
	public String Updatedetailspost() {
		return "askUpdate.jsp";
	}
	
	@GetMapping("Phone_update")
	public String showPhoneupdate() {
		return"Phone_update.jsp";
	}
	
	@PostMapping("Phone_update")
	public String PhoneupdatePage(@RequestParam String meterno, @RequestParam String PhoneNumber) {
		if(service.UpdatePhone(PhoneNumber, meterno)) {
			return"Reading_Updated.jsp";
		}
		else {
			return "meternotfound.jsp";
		}
		
	}
	
	@GetMapping("Sector_update")
	public String showSectorupdate() {
		return"Sector_update.jsp";
	}
	
	@PostMapping("Sector_update")
	public String sectorupdatePage(@RequestParam String meterno, @RequestParam int SectorNumber) {
		if(service.UpdateSector(SectorNumber, meterno)) {
			return"Reading_Updated.jsp";
		}
		else {
			return "meternotfound.jsp";
		}
		
	}
	
	@GetMapping("Delete_Connection")
	public String deleteconpage() {
		return "Delete_Connection.jsp";
	}
    
	@PostMapping("Delete_Connection")
	public String deletecon(@RequestParam String meterno) {
		if(service.deleteconnection(meterno)) {
			return"Connectiondeleted.jsp";
		}
		else {
			return "meternotfound.jsp";
		}
	}

	
	@GetMapping("/sector_connections")
	public String showSectorConnectionsForm() {
		return "sector_connections.jsp";
	}

	@PostMapping("/show_connections")
	public String showConnections(@RequestParam Integer sectorno, Model model) {
		List<Account> accounts = service.getConnectionsBySector(sectorno);
		if(accounts!=null && !accounts.isEmpty()) {
			model.addAttribute("accounts", accounts);
			return "connections.jsp";	
		}
		else {
			return "home.jsp";
		}
	}
	
	@GetMapping("/paybill")
	public String billpaid() {
		return "paybill.jsp";
	}
	
	
	
}
