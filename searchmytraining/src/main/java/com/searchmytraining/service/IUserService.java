package com.searchmytraining.service;

import com.searchmytraining.entity.UserEntity;

public interface IUserService {
	
	public void addUser(UserEntity user);
	public Integer getMaxUserId(String idcolumn);
	public UserEntity getUser(Integer id);
}
