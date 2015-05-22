package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.ILocationInfoDAO;
import com.searchmytraining.entity.LocationEntity;

@Repository
public class LocationInfoDAO extends AbstractJpaDAO<LocationEntity> implements ILocationInfoDAO {

	@Override
	@Transactional
	public void insertLocation(LocationEntity entity) {
		create(entity);
	}

}
