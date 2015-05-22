package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.TraineeRegistrationDao;
import com.searchmytraining.entity.TraineeEntity;

@Repository
public class TraineeRegistrationDaoJPA extends AbstractJpaDAO<TraineeEntity> implements TraineeRegistrationDao  {

	@Override
	public void registerTrainee(TraineeEntity entity) {
		create(entity);
	}

	
	
	
	

}
