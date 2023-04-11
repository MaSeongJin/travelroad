package com.making.travelRoad;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ViewController {


	
	@GetMapping("/")
	public String homePage() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    if (authentication == null || AnonymousAuthenticationToken.class.
	      isAssignableFrom(authentication.getClass())) {
	        return "home";
	    }
	    return "homeAfterLogin";
	}
	
	@GetMapping("/signup")
	public String signupPage() {
		return "signup";
	}
	
}
