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

	@Override
	@Transactional
	public UserEntity getUser(String username) {
		return userdao.getUser(username);
	}

	@Override
	@Transactional
	public void updateUserUUID(String username, String uuid) {
		userdao.updateUserUUID(username, uuid);
	}

	@Override
	@Transactional
	public boolean verifyEmail(String username, String uuid) {
		return userdao.verifyEmail(username, uuid);
	}
}
