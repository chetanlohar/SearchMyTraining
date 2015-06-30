package com.searchmytraining.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.searchmytraining.dao.CityDAO;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.service.ICityService;

@Service
public class CityService implements ICityService {

	@Autowired
	public CityDAO citydao;
	
	@Override
	public List<CityEntity> getCities(Long stateid) {
		return citydao.getCities(stateid);
	}

}
