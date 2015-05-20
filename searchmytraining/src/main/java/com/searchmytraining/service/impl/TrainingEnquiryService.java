package com.searchmytraining.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.TrainingEnquiryDao;
import com.searchmytraining.entity.TrainingEnquiryEntity;
import com.searchmytraining.service.ITrainingEnquiryService;

@Service
public class TrainingEnquiryService implements ITrainingEnquiryService {

	@Autowired
	public TrainingEnquiryDao trainingDao;
	
	@Transactional
	public void saveTrainingEnquiry(TrainingEnquiryEntity entity) {
		trainingDao.saveTrainingEnquiry(entity);		
	}

}
