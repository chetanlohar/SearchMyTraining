package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.entity.PhoneEntity;

@Repository
public class PhoneDAO extends AbstractJpaDAO<PhoneEntity> implements IPhoneDAO {

	@Override
	public void insertPhoneDetails(PhoneEntity entity) {
		create(entity);
	}

}
