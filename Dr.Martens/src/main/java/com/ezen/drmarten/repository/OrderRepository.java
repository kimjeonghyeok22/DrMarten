package com.ezen.drmarten.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ezen.drmarten.model.Order;

public interface OrderRepository  extends JpaRepository<Order, Integer> {

}