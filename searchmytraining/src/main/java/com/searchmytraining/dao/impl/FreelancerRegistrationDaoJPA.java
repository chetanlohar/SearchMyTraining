package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.FreelancerDAO;
import com.searchmytraining.entity.FreelancerEntity;

@Repository
public class FreelancerRegistrationDaoJPA extends AbstractJpaDAO<FreelancerEntity> implements FreelancerDAO 
{

	@Override
	public void registerFreelancer(FreelancerEntity entity) {
		create(entity);		
		
	}

	@Override
	public FreelancerEntity getFreelancer(Long id) {
		return findOne(id);
	}

	@Override
	public Integer getMaxUserId(String idcolumn) {
		return getMaxId("FreelancerEntity", idcolumn);
	}

}
