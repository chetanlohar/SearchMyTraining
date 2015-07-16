package com.searchmytraining.dto;

public class EducationDTO {
	
	private Integer degreeid;
	private String otherDegree;
	private String university;
	private Integer yop;
	public Integer getDegreeid() {
		return degreeid;
	}
	public void setDegreeid(Integer degreeid) {
		this.degreeid = degreeid;
	}
	public String getOtherDegree() {
		return otherDegree;
	}
	public void setOtherDegree(String otherDegree) {
		this.otherDegree = otherDegree;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public Integer getYop() {
		return yop;
	}
	public void setYop(Integer yop) {
		this.yop = yop;
	}
	@Override
	public String toString() {
		return "EducationDTO [degreeid=" + degreeid
				+ ", otherDegree=" + otherDegree + ", university=" + university
				+ ", yop=" + yop + "]";
	}
}
