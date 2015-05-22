package com.searchmytraining.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	public UserDAO userdao;
	
	@Override
	@Transactional
	public void addUser(UserEntity entity) {
		userdao.addUser(entity);
	}
	
	public Integer getMaxUserId(String idcolumn)
	{
		return userdao.getMaxUserId(idcolumn);
	}

	@Override
	@Transactional
	public UserEntity getUser(Integer id) {
		return userdao.getUser(id);
	}
}
