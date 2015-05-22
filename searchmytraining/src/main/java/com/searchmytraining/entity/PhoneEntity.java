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
@Table(name="tbl_phonedetails")
public class PhoneEntity implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="phoneId")
	private Integer phoneId;
	
	@Column(name="phoneValue")
	private String phoneValue;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=UserEntity.class)
	@JoinColumn(name="userId")
	private UserEntity user;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=PhoneTypeEntity.class)
	@JoinColumn(name="phnTypeId")
	private PhoneTypeEntity phonetype;

	public Integer getPhoneId() {
		return phoneId;
	}
	public void setPhoneId(Integer phoneId) {
		this.phoneId = phoneId;
	}
	public String getPhoneValue() {
		return phoneValue;
	}
	public void setPhoneValue(String phoneValue) {
		this.phoneValue = phoneValue;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	public PhoneTypeEntity getPhonetype() {
		return phonetype;
	}
	public void setPhonetype(PhoneTypeEntity phonetype) {
		this.phonetype = phonetype;
	}
}
