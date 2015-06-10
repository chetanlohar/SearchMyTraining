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

@Entity
@Table(name="tbl_freelancerregdetails")
public class FreelancerEntity implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="freelancerId")
	@GeneratedValue
	private Integer freelancerId ; 
	@Column(name="fullName")
	 private String fullName ;
	@Column(name="city")
	 private String city ;
	@Column(name="contact")
	 private String contact ;
	@Column(name="email")
	 private String email ;

	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=UserEntity.class)
	@JoinColumn(name="userId")
	private UserEntity user;

	public Integer getFreelancerId() {
		return freelancerId;
	}
	public void setFreelancerId(Integer freelancerId) {
		this.freelancerId = freelancerId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
