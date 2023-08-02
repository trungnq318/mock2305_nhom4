package com.vti.service;

import com.vti.entity.Booking;
import com.vti.entity.Passenger;
import com.vti.repository.BookingRepository;
import com.vti.repository.PassengerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PassengerService implements IPassengerService {

	@Autowired
	private PassengerRepository repository;

	@Override
	public List<Passenger> getAllPassengers() {
		return repository.findAll();
	}
}
