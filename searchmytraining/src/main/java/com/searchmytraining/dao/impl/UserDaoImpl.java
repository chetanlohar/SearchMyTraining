package com.searchmytraining.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.entity.UserEntity;

@Repository
public class UserDaoImpl extends AbstractJpaDAO<UserEntity> implements UserDAO {

	EntityManager entityManager;
	
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

	@Override
	public UserEntity getUser(String username) {
		String query = "from UserEntity user where user.userName=?";
		entityManager = getEntityManager();
		TypedQuery<UserEntity> query1 = entityManager.createQuery(query,UserEntity.class);
		query1.setParameter(1, username.trim());
		UserEntity userentity = null;
		try
		{
			userentity = query1.getSingleResult();
		}
		catch(javax.persistence.NoResultException e)
		{
			System.out.println("Session Expired...No result found for userid(null)");
		}
		System.out.println(userentity.getUserId());
		return userentity;
	}
	
	

}
