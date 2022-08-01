package com.ezen.drmarten.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "CartItemList")
@EqualsAndHashCode(exclude =  {"productNumbers"})
public class CartItemList {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "LIST_NUM_SEQ")
	@SequenceGenerator(sequenceName="LIST_NUM_SEQ",allocationSize=1,name="LIST_NUM_SEQ")
	private int listNum;
	
	private int cartNum;
	private int productCood;
	private String productName;
	private int productNumbers;
	private int productSize;
	private int Price;


}
