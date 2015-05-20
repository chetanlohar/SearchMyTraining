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
@Table(name="tbl_profesnlassociation")
public class ProfessionalAssociationEntity implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="asscoId")
	private Integer asscoId;
	
	@Column(name="assocName")
	private String assocName;
	
	@ManyToOne(fetch=FetchType.EAGER, targetEntity=UserEntity.class)
	@JoinColumn(name="userId")
	private UserEntity user;

	public Integer getAsscoId() {
		return asscoId;
	}
	public void setAsscoId(Integer asscoId) {
		this.asscoId = asscoId;
	}
	public String getAssocName() {
		return assocName;
	}
	public void setAssocName(String assocName) {
		this.assocName = assocName;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "ProfessionalAssociationEntity [asscoId=" + asscoId
				+ ", assocName=" + assocName + ", user=" + user + "]";
	}
	
}
