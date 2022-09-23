package com.ezen.drmarten.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.springframework.stereotype.Component;


@Component
public class Product {
	private int product_code;
	private String name;
	private String made;
	private String material;
	private String new_tag;
	private String color; 
	private int sell_count;
	private int view_count;
	private String category;
	private int price;
	private String gender; 
	private String onlineonly;
	private String vegan;
	private Integer discount;
	
	private List<Product_attach> attach = new ArrayList<>();
	private List<Product_size> size = new ArrayList<>();
	
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMade() {
		return made;
	}
	public void setMade(String made) {
		this.made = made;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getNew_tag() {
		return new_tag;
	}
	public void setNew_tag(String new_tag) {
		this.new_tag = new_tag;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getSell_count() {
		return sell_count;
	}
	public void setSell_count(int sell_count) {
		this.sell_count = sell_count;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public List<Product_attach> getAttach() {
		return attach;
	}
	public void setAttach(List<Product_attach> attach) {
		this.attach = attach;
	}
	public List<Product_size> getSize() {
		return size;
	}
	public void setSize(List<Product_size> size) {
		this.size = size;
	}
	public String getOnlineonly() {
		return onlineonly;
	}
	public void setOnlineonly(String onlineonly) {
		this.onlineonly = onlineonly;
	}
	public String getVegan() {
		return vegan;
	}
	public void setVegan(String vegan) {
		this.vegan = vegan;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	@Override
	public int hashCode() {
		return Objects.hash(product_code);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return product_code == other.product_code;
	}
	
	
}
