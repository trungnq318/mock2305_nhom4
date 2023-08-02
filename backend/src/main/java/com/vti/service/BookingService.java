package com.vti.service;

import com.vti.entity.Booking;
import com.vti.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookingService implements IBookingService {

	@Autowired
	private BookingRepository repository;

	@Override
	public List<Booking> getAllBookings() {
		return repository.findAll();
	}
}
