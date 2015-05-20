package com.searchmytraining.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="trainee_master")
public class TraineeEntity1 implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long trainee_id;
	
	@Column(name="trainee_name",nullable=false)
	private String trainee_name;
	
	@Column(name="trainee_phone",nullable=false)
	private String trainee_phone;
	
	@Column(name="trainee_email",nullable=false)
	private String trainee_email;
	
	@Column(name="trainee_password",nullable=false)
	private String trainee_password;
	
	@Column(name="city_id",nullable=false)
	private Long city_id;

	public Long getTrainee_id() {
		return trainee_id;
	}

	public void setTrainee_id(Long trainee_id) {
		this.trainee_id = trainee_id;
	}

	public String getTrainee_name() {
		return trainee_name;
	}

	public void setTrainee_name(String trainee_name) {
		this.trainee_name = trainee_name;
	}

	public String getTrainee_phone() {
		return trainee_phone;
	}

	public void setTrainee_phone(String trainee_phone) {
		this.trainee_phone = trainee_phone;
	}

	public String getTrainee_email() {
		return trainee_email;
	}

	public void setTrainee_email(String trainee_email) {
		this.trainee_email = trainee_email;
	}

	public String getTrainee_password() {
		return trainee_password;
	}

	public void setTrainee_password(String trainee_password) {
		this.trainee_password = trainee_password;
	}

	public Long getCity_id() {
		return city_id;
	}

	public void setCity_id(long l) {
		this.city_id = l;
	}
	
	

}
