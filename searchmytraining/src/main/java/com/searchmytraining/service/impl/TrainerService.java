package com.searchmytraining.service.impl;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.dao.StatusDAO;
import com.searchmytraining.dao.TrainerDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.TrainerDTO;
import com.searchmytraining.entity.RoleEntity;
import com.searchmytraining.entity.StatusEntity;
import com.searchmytraining.entity.TrainerEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ITrainerService;

@Service
  public class TrainerService implements ITrainerService {
	
	@Autowired
	public WebApplicationContext context; 
	
	@Autowired
	public TrainerDAO regdao;
	@Autowired
	public DozerBeanMapper mapper;
	@Autowired
	public RoleDAO roledao;
	@Autowired
	public StatusDAO statusdao;
	@Autowired
	public UserDAO userdao;
	@Autowired
	public BCryptPasswordEncoder encoder;
	@Override
	@Transactional
	public Integer registerTrainer(TrainerDTO trainerdto) {
		UserEntity user = (UserEntity)context.getBean("userEntity");
		StatusEntity status = statusdao.getStatus(1);
		TrainerEntity entity = mapper.map(trainerdto, TrainerEntity.class);
		user.setUserName(entity.getEmail());
		user.setPassword(encoder.encode(entity.getPassword()));
		user.setEnabled(1);
		user.setAccountNonExpired(1);
		user.setAccountNonLocked(1);
		user.setCredentialsNonExpired(1);
		user.setStatus(status);
		userdao.addUser(user);
		entity.setUser(user);
		RoleEntity role = (RoleEntity)context.getBean("roleEntity");
		role.setROLE("TPI");
		role.setUser(user);
		roledao.setRoleToUser(role);
		regdao.registerTrainer(entity);
		return userdao.getMaxUserId("userId");
	}
	@Override
	public TrainerEntity getTrainer(Long id) {
		return regdao.getTrainer(id);
	}
	@Override
	public TrainerEntity getTrainerByUserid(Long userid) {
		return regdao.getTrainerByUserid(userid);
	}
}
