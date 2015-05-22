package com.searchmytraining.service.impl;

import java.util.ArrayList;
import java.util.Iterator;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.CityDAO;
import com.searchmytraining.dao.IClientDAO;
import com.searchmytraining.dao.IContactInfoDAO;
import com.searchmytraining.dao.ILocationInfoDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.dao.IPhoneTypeDAO;
import com.searchmytraining.dao.IProfessionalAssociationDAO;
import com.searchmytraining.dao.InstituteDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.ClientDetailsDTO;
import com.searchmytraining.dto.ContactDTO;
import com.searchmytraining.dto.InstituteDTO;
import com.searchmytraining.dto.LocationDTO;
import com.searchmytraining.dto.ProfessionalAssociationDTO;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.ClientEntity;
import com.searchmytraining.entity.ContactInfoEntity;
import com.searchmytraining.entity.InstituteEntity;
import com.searchmytraining.entity.LocationEntity;
import com.searchmytraining.entity.PhoneEntity;
import com.searchmytraining.entity.PhoneTypeEntity;
import com.searchmytraining.entity.ProfessionalAssociationEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IFreeServiceDetails;
import com.searchmytraining.service.IInstituteServiceDetails;

@Service
public class FreeServiceDetails implements IFreeServiceDetails {
	@Autowired
	public InstituteDAO institutedao;
	@Autowired
	public IContactInfoDAO contactinfodao;
	@Autowired
	public UserDAO userdao;
	@Autowired
	public DozerBeanMapper mapper;
	@Autowired
	public IPhoneTypeDAO phonetypedao;
	@Autowired
	public IPhoneDAO phonedao;
	@Autowired
	public CityDAO citydao;
	@Autowired
	public ILocationInfoDAO locationdao;
	@Autowired
	public IProfessionalAssociationDAO assocdao;
	@Autowired
	public IClientDAO clientdao;
	
	@Override
	@Transactional
	public void updateFreeLocationDetails(LocationDTO instlocdto) 
	{
		LocationEntity locentity = mapper.map(instlocdto, LocationEntity.class);
		UserEntity user = userdao.getUser(instlocdto.getUserid());
		CityEntity city = citydao.getCity(instlocdto.getCity());
		locentity.setUser(user);
		locentity.setCity(city);
		locationdao.insertLocation(locentity);
		

	}

}
