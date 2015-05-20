package com.searchmytraining.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name = "training_enquiry")
@Entity
public class TrainingEnquiryEntity implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long training_enquiry_id;
	
	@Column(name="firstname", nullable=false)
	private String firstname;
	
	@Column(name="lastname", nullable=false)
	private String lastname;
	
	@Column(name="course_title", nullable=false)
	private String course_title;
	
	@Column(name="email", nullable=false)
	private String email;
	
	@Column(name="phone", nullable=false)
	private String phone;
	
	@Column(name="trainingneeds")
	private String trainingneeds;
	
	@Column(name="city_id")
	private Long cityid;

	public Long getTraining_enquiry_id() {
		return training_enquiry_id;
	}

	public void setTraining_enquiry_id(Long training_enquiry_id) {
		this.training_enquiry_id = training_enquiry_id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCourse_title() {
		return course_title;
	}

	public void setCourse_title(String course_title) {
		this.course_title = course_title;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTrainingneeds() {
		return trainingneeds;
	}

	public void setTrainingneeds(String trainingneeds) {
		this.trainingneeds = trainingneeds;
	}

	public Long getCityid() {
		return cityid;
	}

	public void setCityid(Long cityid) {
		this.cityid = cityid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}