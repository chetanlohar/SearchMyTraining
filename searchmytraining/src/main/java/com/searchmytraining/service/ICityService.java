package com.searchmytraining.service;

import java.util.List;

import com.searchmytraining.entity.CityEntity;

public interface ICityService {

	public List<CityEntity> getCities(Integer stateid);
	
}
