package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.TrainerRegistrationDAO;
import com.searchmytraining.entity.TrainerEntity;

@Repository
public class TrainerRegistrationDaoJPA extends AbstractJpaDAO<TrainerEntity> implements TrainerRegistrationDAO {

	@Override
	public void registerTrainer(TrainerEntity entity) {
		create(entity);		
	}
	
	public TrainerEntity getTrainer(Long id)
	{
		return findOne(id);
	}

	@Override
	public Integer getMaxUserId(String idcolumn) {
		return getMaxId("TrainerEntity", idcolumn);
	}

}
