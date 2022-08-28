package com.ezen.drmarten.model;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;


@Data
@Entity
@Table(name = "ORDER_LIST")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ORDER_NUM_SEQ")
	@SequenceGenerator(sequenceName = "CARTNUM_NUM_SEQ", allocationSize = 1, name = "CARTNUM_NUM_SEQ")
	private int order_num;
	private String u_email;
	private java.sql.Date order_date;
	private int total_price;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "order_num")
	private List<Order_detail> cart;

	public void setCart(List<Order_detail> list) {
		this.cart = list;

	}

}
