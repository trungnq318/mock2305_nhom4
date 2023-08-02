package com.vti.repository;

import com.vti.entity.Booking;
import com.vti.entity.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface PassengerRepository extends JpaRepository<Passenger, Integer>, JpaSpecificationExecutor<Passenger> {

}
