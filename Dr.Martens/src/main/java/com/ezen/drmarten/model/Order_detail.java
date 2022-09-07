package com.ezen.drmarten.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "ORDER_DETAIL")
public class Order_detail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ORDER_DETAIL_NUM_SEQ")
	@SequenceGenerator(sequenceName="ORDER_DETAIL_NUM_SEQ",allocationSize=1,name="ORDER_DETAIL_NUM_SEQ")
	private int order_detail_num;
	private String u_email;
	private String product_name;
	private int product_code;
	private int product_size;
	private int product_count;
	private int discounted_price;
	private int total_price;

}