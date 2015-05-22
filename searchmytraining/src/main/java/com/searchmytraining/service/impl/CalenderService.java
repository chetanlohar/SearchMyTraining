package com.searchmytraining.service.impl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.CalenderDAO;
import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.service.ICalenderService;

@Service
public class CalenderService implements ICalenderService 
{
	@Autowired
	CalenderDAO daoObj;
	
	@Override
	@Transactional
	public void addCalender(CalenderEntity entity) 
	{
		daoObj.addCalender(entity);
	}

	@Override
	public List<CalenderEntity> getRecentelyAdded(Integer userId,
			Timestamp timestamp) {
		
		return daoObj.getRecentelyAdded(userId, timestamp);
	}

	@Override
	public List<CalenderEntity> getUserCalender(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CalenderEntity> getAllCalender() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateCalender(CalenderEntity entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeCalender(long calenderId) {
		// TODO Auto-generated method stub
		
	}

}