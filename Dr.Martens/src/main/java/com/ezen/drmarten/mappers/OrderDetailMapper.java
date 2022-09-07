package com.ezen.drmarten.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.ezen.drmarten.model.Order_detail;


@Mapper
public interface OrderDetailMapper {
	List <Order_detail> getOrderDetail(int num);
}
