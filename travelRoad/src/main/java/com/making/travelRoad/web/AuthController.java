package com.making.travelRoad.web;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.making.travelRoad.domain.user.User;
import com.making.travelRoad.service.AuthService;
import com.making.travelRoad.web.dto.auth.SignupDTO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {

	private final AuthService authService;
	
	@GetMapping("/auth/signin")
	public String signinForm() {
		return "auth/signin";
	}

	@GetMapping("/auth/signup")
	public String signupForm() {
		return "auth/signup";
	}

	// 회원가입버튼 -> /auth/signup -> /auth/signin
	@PostMapping("/auth/signup")
	public String signup(@Valid SignupDTO signupDTO, BindingResult bindingResult) { // key=value(x-www-form-urlencoded)
		User user = signupDTO.toEntity();
		User userEntity = authService.join(user);
		System.out.println(userEntity);
		return "/home";

	}
	
}
