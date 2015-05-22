package com.searchmytraining.dto;

import java.util.ArrayList;

public class ClientDetailsDTO {
	
	private Integer userid;
	private ArrayList<String> clientName;
	public ArrayList<String> getClientName() {
		return clientName;
	}
	public void setClientName(ArrayList<String> clientName) {
		this.clientName = clientName;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "ClientDetailsDTO [userid=" + userid + ", clientName="
				+ clientName + "]";
	}
}
