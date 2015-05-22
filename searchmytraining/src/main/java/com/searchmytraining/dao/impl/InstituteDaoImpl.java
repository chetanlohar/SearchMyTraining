package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.InstituteDAO;
import com.searchmytraining.entity.InstituteEntity;

@Repository
public class InstituteDaoImpl extends AbstractJpaDAO<InstituteEntity> implements InstituteDAO {

	@Override
	public void updateInstituteDetails(InstituteEntity entity) {
		create(entity);
	}

	@Override
	public Integer getMaxUserId(String idcolumn) {
		return getMaxId("InstituteEntity", idcolumn);
	}

}
