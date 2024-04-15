package com.example.sample;

import org.springframework.boot.SpringApplication;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
public class SampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SampleApplication.class, args);
	}

	@GetMapping("/getData")
	public String getMethodName() {
		return "welcome to java world";
	}
	
}
