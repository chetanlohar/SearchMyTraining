package com.searchmytraining.dto;


public class LocationDTO {
	
	private String bldng_flatno;
	private String street;
	private String landmark;
	private Integer pincode;
	private String country;
	private String state;
	private String city;
	private Integer userid;
	
	public String getBldng_flatno() {
		return bldng_flatno;
	}
	public void setBldng_flatno(String bldng_flatno) {
		this.bldng_flatno = bldng_flatno;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "InstituteLocDTO [bldng_flatno=" + bldng_flatno + ", street="
				+ street + ", landmark=" + landmark + ", pincode=" + pincode
				+ ", country=" + country + ", state=" + state + ", city="
				+ city + ", userid=" + userid + "]";
	}
	
}
