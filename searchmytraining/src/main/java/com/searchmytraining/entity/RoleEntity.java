package com.searchmytraining.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_rolemaster")
public class RoleEntity implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	private Integer roleId;
	
	@Column(name="roleType")
	private String roleType;
	
	@Column(name="roleDescription")
	private String roleDesc;

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleType() {
		return roleType;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

	public String getRoleDesc() {
		return roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}
	
}
