package com.searchmytraining.dao;

import java.sql.Timestamp;
import java.util.List;

import com.searchmytraining.entity.CalenderEntity;


public interface CalenderDAO 
{
	public void addCalender(CalenderEntity entity);
	public List<CalenderEntity> getRecentelyAdded(Integer userId,Timestamp timestamp);
	public List<CalenderEntity> getUserCalender(Integer userId);
	public List<CalenderEntity> getAllCalender();
	public String updateCalender(CalenderEntity entity);
	public void removeCalender(long calenderId);
	public List<CalenderEntity> getCalendersByKeyword(String kyeword); 
}
