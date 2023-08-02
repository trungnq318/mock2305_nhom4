package com.vti.controller;

import com.vti.entity.Passenger;
import com.vti.service.IPassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/passengers")
public class PassengerController {

	@Autowired
	private IPassengerService service;

	@GetMapping()
	public List<Passenger> getAllPassengers() {
		return service.getAllPassengers();
	}
}
