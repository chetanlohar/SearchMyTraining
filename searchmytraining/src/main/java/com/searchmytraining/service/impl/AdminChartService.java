package com.searchmytraining.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.IAdminChartDAO;
import com.searchmytraining.entity.ChartEntity;
import com.searchmytraining.service.IAdminChartService;

@Service
public class AdminChartService implements IAdminChartService {
	
	@Autowired
	public IAdminChartDAO chartdao;
	
	@Override
	@Transactional
	public List<ChartEntity> tpfRegistered() {
		return chartdao.tpfRegistered();
	}

	@Override
	@Transactional
	public List<ChartEntity> tpiRegistered() {
		return chartdao.tpiRegistered();
	}
}
