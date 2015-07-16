package com.searchmytraining.service.impl;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.searchmytraining.dao.FreelancerDAO;
import com.searchmytraining.dao.IFLProfileDAO;
import com.searchmytraining.dao.IFreeeLCertificationAwrdDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.dao.StatusDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.entity.CertificationAwardEntity;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.FreeLancerProfileEntity;
import com.searchmytraining.entity.FreelancerEntity;
import com.searchmytraining.entity.PhoneEntity;
import com.searchmytraining.entity.RoleEntity;
import com.searchmytraining.entity.StatusEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ICityService;
import com.searchmytraining.service.IFreelancerService;

@Service
public class FreelancerService implements IFreelancerService
{
	@Autowired
	public WebApplicationContext context;
	@Autowired
	public FreelancerDAO freelancerdao;
	@Autowired
	public DozerBeanMapper mapper;
	@Autowired
	public RoleDAO roledao;
	@Autowired
	public StatusDAO statusdao;
	@Autowired
	public UserDAO userdao;
	@Autowired
	public ICityService cityservice;
	@Autowired
	public BCryptPasswordEncoder encoder;
	@Autowired
	public IFreeeLCertificationAwrdDAO certidao;
	@Autowired
	public IFLProfileDAO flprofiledao;
	@Autowired
	public IPhoneDAO phonedao;
	
	@Override
	@Transactional
	public Integer registerFreelancer(FreelancerDTO freelancerDto) {
		StatusEntity status = statusdao.getStatus(1);
		FreelancerEntity entity = mapper.map(freelancerDto, FreelancerEntity.class);
		UserEntity user = (UserEntity)context.getBean("userEntity");
		user.setUserName(entity.getEmail());
		user.setPassword(encoder.encode(freelancerDto.getPassword12()));
		user.setEnabled(1);
		user.setAccountNonExpired(1);
		user.setAccountNonLocked(1);
		user.setCredentialsNonExpired(1);
		user.setStatus(status);
		// Insertion of user in users table
		userdao.addUser(user);
		//Insertion of Role in user_roles table
		RoleEntity role = (RoleEntity)context.getBean("roleEntity");
		role.setROLE("TPF");
		role.setUser(user);
		roledao.setRoleToUser(role);
		entity.setUser(user);
		
		CityEntity city = (CityEntity)context.getBean("cityEntity");
		city = cityservice.getCity(freelancerDto.getCity12());
		entity.setCity(city);
		
		FreeLancerProfileEntity flProfEntity = mapper.map(freelancerDto, FreeLancerProfileEntity.class);
		flProfEntity.setUser(user);
		flprofiledao.insertFlProfDet(flProfEntity);
		
		freelancerdao.registerFreelancer(entity);
		return userdao.getMaxUserId("userId");
	}

	@Override
	public FreelancerEntity getFreeLancerDetByUserId(Long userid) {
		return freelancerdao.getFreeLancerDetByUserId(userid);
	}

	@Override
	public CertificationAwardEntity getCertificationDetByUserId(Long userid) {
		return certidao.getCertificationDetByUserId(userid);
	}

	@Override
	@Transactional
	public void insertFlProfDet(FreeLancerProfileEntity entity) {
		flprofiledao.insertFlProfDet(entity);
	}
	
	public FreeLancerProfileEntity getFLProfileDet(Long userId)
	{
		return flprofiledao.getFLProfileDet(userId);
	}

	@Override
	@Transactional
	public void updateFlProfDet(FreeLancerProfileEntity entity) {
		flprofiledao.updateFlProfDet(entity);
	}

	@Override
	public List<PhoneEntity> getFLPhoneDetails(Long userId) {
		return phonedao.getPhoneByUserId(userId);
	}
}
