package com.searchmytraining.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Table(name = "tbl_trngenquiry")
@Entity
public class TrainingEnquiryEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long trngenqId;
	
	@Column(name="fName", nullable=false)
	private String firstname;
	
	@Column(name="lName", nullable=false)
	private String lastname;
	
	@Column(name="courseTitle", nullable=false)
	private String coursetitle;
	
	@Column(name="email", nullable=false)
	private String email;
	
	@Column(name="phone", nullable=false)
	private String phone;
	
	@Column(name="trngNeed")
	private String trngneeds;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=CityEntity.class)
	@JoinColumn(name="cityId")
	private CityEntity city;
}