package com.project.ElectricityBillingSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
 
@Controller
public class login {
 
    @GetMapping("login")
    public String showLoginForm() {
        return "login.html"; // This will resolve to the login.html template
    }
 
    @PostMapping("login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
        // Handle login logic here (authentication, authorization, etc.)
    	if(username.equals("varsha") && password.equals("reddy")) {
    		return "redirect:/home";
    	}
        // For simplicity, we'll just redirect to a success page
        return "redirect:login";
    }
 
}