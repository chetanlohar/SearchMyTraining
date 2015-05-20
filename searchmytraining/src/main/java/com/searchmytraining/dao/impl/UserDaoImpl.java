package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.entity.UserEntity;

@Repository
public class UserDaoImpl extends AbstractJpaDAO<UserEntity> implements UserDAO {

	@Override
	public void addUser(UserEntity entity) {
		create(entity);
	}

	@Override
	public Integer getMaxUserId(String idcolumn) {
		return getMaxId("UserEntity", idcolumn);
	}
	
	public UserEntity getUser(Integer id)
	{
		setClazz(UserEntity.class);
		UserEntity user = findOne(id);
		System.out.println("from UserDaoImpl: "+user.getUserName());
		return user;
	}

}
