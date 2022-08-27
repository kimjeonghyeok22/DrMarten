package com.ezen.drmarten.model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "CartView")
public class CartView {
	

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CARTVIEW_NUM_SEQ")
	@SequenceGenerator(sequenceName="CARTVIEW_NUM_SEQ",allocationSize=1,name="CARTVIEW_NUM_SEQ")
	private int cartViewId;
	private String email;
	private String name;
	private int product_code;
	private int product_size;
	private int product_count;
	private int discount;
	private int price;
	private int discounted_price;

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartView other = (CartView) obj;
		return product_code == other.product_code && product_size == other.product_size;
	}

	@Override
	public int hashCode() {
		return Objects.hash(product_code, product_size);
	}

}
