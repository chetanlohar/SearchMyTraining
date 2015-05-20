package com.searchmytraining.service.impl;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.dao.StatusDAO;
import com.searchmytraining.dao.TrainerRegistrationDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.TrainerDTO;
import com.searchmytraining.entity.StatusEntity;
import com.searchmytraining.entity.TrainerEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ITrainerService;

@Service
  public class TrainerService implements ITrainerService {

	@Autowired
	public TrainerRegistrationDAO regdao;

	@Autowired
	public DozerBeanMapper mapper;

	@Autowired
	public RoleDAO roledao;

	@Autowired
	public StatusDAO statusdao;

	@Autowired
	public UserDAO userdao;

	@Override
	@Transactional
	public Integer registerTrainer(TrainerDTO trainerdto) {

		
		/*RoleEntity role1 = roledao.getRole(1);*/
		StatusEntity status = statusdao.getStatus(1);
		TrainerEntity entity = mapper.map(trainerdto, TrainerEntity.class);
			
		UserEntity user = new UserEntity();
		user.setUserName(entity.getEmail());
		user.setPassword(entity.getPassword());
		user.setEnabled(1);
		user.setAccountNonExpired(1);
		user.setAccountNonLocked(1);
		user.setCredentialsNonExpired(1);
		user.setStatus(status);
		/*user.setRole(role1);*/
		userdao.addUser(user);
	
		entity.setUser(user);
		regdao.registerTrainer(entity);
		
		return userdao.getMaxUserId("userId");
		
	}

}
