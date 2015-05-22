package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IEmploymentDAO;
import com.searchmytraining.entity.EmploymentEntity;

@Repository
public class EmploymentDAO extends AbstractJpaDAO<EmploymentEntity> implements IEmploymentDAO {

	@Override
	public void updateEmpldet(EmploymentEntity emplEntity) {
		create(emplEntity);
	}

}
