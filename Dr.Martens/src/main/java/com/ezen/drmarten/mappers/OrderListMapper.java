package com.ezen.drmarten.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.ezen.drmarten.model.Order;


@Mapper
public interface OrderListMapper {
	List <Order> getOrderList(String email);
}
