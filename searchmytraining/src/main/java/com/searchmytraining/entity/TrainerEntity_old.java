package com.searchmytraining.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_trainerdetails")
public class TrainerEntity_old implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="trainerid")
	private Integer trainerid;
	
	@Column(name="organisationName")
	private String organisationName;
	
	@Column(name="email")
	private String email;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=CityEntity.class)
	@JoinColumn(name="cityId")
	private CityEntity city;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=UserEntity.class)
	@JoinColumn(name="userId")
	private UserEntity user;

	public Integer getTrainerid() {
		return trainerid;
	}

	public void setTrainerid(Integer trainerid) {
		this.trainerid = trainerid;
	}

	public String getOrganisationName() {
		return organisationName;
	}

	public void setOrganisationName(String organisationName) {
		this.organisationName = organisationName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public CityEntity getCity() {
		return city;
	}

	public void setCity(CityEntity city) {
		this.city = city;
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
