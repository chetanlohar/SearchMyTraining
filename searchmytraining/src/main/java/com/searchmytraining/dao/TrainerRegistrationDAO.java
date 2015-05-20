package com.searchmytraining.dao;

import com.searchmytraining.entity.TrainerEntity;

public interface TrainerRegistrationDAO {
	
	public void registerTrainer(TrainerEntity entity);
	public TrainerEntity getTrainer(Long id);
	public Integer getMaxUserId(String idcolumn);
	
}
