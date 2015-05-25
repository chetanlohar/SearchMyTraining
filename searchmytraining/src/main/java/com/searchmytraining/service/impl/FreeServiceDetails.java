package com.searchmytraining.service.impl;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.CityDAO;
import com.searchmytraining.dao.IClientDAO;
import com.searchmytraining.dao.IContactInfoDAO;
import com.searchmytraining.dao.IFreeeLCertificationAwrdDAO;
import com.searchmytraining.dao.ILocationInfoDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.dao.IPhoneTypeDAO;
import com.searchmytraining.dao.IProfessionalAssociationDAO;
import com.searchmytraining.dao.InstituteDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.CertificationAwardDTO;
import com.searchmytraining.dto.LocationDTO;
import com.searchmytraining.entity.CertificationAwardEntity;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.LocationEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IFreeLancerServiceDetails;

@Service
public class FreeServiceDetails implements IFreeLancerServiceDetails {
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
	@Autowired
	public IFreeeLCertificationAwrdDAO certidao;
	
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

	@Override
	@Transactional
	public void updateCertiAndAwardInfo(CertificationAwardDTO certidto) {
		CertificationAwardEntity certientity = mapper.map(certidto, CertificationAwardEntity.class);
		certientity.setUser(userdao.getUser(certidto.getUserid()));
		certidao.updateCertificationAwrdDet(certientity);
	}

}
