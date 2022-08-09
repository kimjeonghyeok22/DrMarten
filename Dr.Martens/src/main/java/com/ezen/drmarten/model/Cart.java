package com.ezen.drmarten.model;

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
@Table(name = "CartMember")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CARTNUM_NUM_SEQ")
	@SequenceGenerator(sequenceName = "CARTNUM_NUM_SEQ", allocationSize = 1, name = "CARTNUM_NUM_SEQ")
	private int cartNum;

	private String uerEmail;
	private java.sql.Date buyTime;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="cart_Num",referencedColumnName = "cartNum")
	private List<CartItemList> cart;

}
