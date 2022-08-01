package com.ezen.drmarten.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name="User_Table")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USER_NUM_SEQ")
	@SequenceGenerator(sequenceName="USER_NUM_SEQ",allocationSize=1,name="USER_NUM_SEQ")
	private Long num;
	
	private String u_id;
	private String u_pw;
	private String name;
	private String gender;
	private String adress;
	private int phone_num;
	private java.sql.Date birth;
	private String email;
}
