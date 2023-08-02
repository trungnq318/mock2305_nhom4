package com.vti.controller;

import com.vti.dto.GroupFormForCreating;
import com.vti.dto.GroupFormForUpdating;
import com.vti.dto.filter.GroupFilter;
import com.vti.entity.Booking;
import com.vti.entity.Group;
import com.vti.service.IBookingService;
import com.vti.service.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/bookings")
public class BookingController {

	@Autowired
	private IBookingService service;

	@GetMapping()
	public List<Booking> getAllBookings() {
		return service.getAllBookings();
	}
}
