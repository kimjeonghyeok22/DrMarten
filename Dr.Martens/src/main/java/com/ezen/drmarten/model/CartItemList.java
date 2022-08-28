package com.ezen.drmarten.model;

import javax.persistence.CascadeType;
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
@Table(name = "CartBuyList")
public class CartItemList {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CARTBUY_NUM_SEQ")
	@SequenceGenerator(sequenceName="CARTBUY_NUM_SEQ",allocationSize=1,name="CARTBUY_NUM_SEQ")
	private int cartBuyId;
	private String email;
	private String name;
	private int product_code;
	private int product_size;
	private int product_count;
	private int discount;
	private int price;
	private int discounted_price;
	private int total_price;



}