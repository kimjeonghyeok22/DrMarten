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
@Table(name = "User_Table")
public class User {

	@Id
	private String u_email;
	private String u_pw;
	private String name;
	private String gender;
	private String adress;
	private int phone_num;
	private java.sql.Date birth;
	private int point;
	
	private int user_Email_Checked;
}
