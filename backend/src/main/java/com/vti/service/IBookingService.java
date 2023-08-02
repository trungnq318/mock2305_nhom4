package com.vti.service;

import com.vti.dto.filter.GroupFilter;
import com.vti.entity.Booking;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IBookingService {

	List<Booking> getAllBookings();

}
