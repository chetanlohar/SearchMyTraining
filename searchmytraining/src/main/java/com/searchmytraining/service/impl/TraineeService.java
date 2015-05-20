package com.searchmytraining.service.impl;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.dao.StatusDAO;
import com.searchmytraining.dao.TraineeRegistrationDao;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.TraineeDTO;
import com.searchmytraining.entity.StatusEntity;
import com.searchmytraining.entity.TraineeEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ITraineeService;

@Service
public class TraineeService implements ITraineeService {

	@Autowired
	public TraineeRegistrationDao traineedao;
	
	@Autowired
	public DozerBeanMapper mapper;
	
	@Autowired
	public UserDAO userdao;
	
	@Autowired
	public RoleDAO roledao;

	@Autowired
	public StatusDAO statusdao;
	
	@Override
	@Transactional
	public void registerTrainee(TraineeDTO traineedto) {
		
		TraineeEntity traineeentity = mapper.map(traineedto, TraineeEntity.class);
		System.out.println(traineeentity);
		StatusEntity status = statusdao.getStatus(1);
		UserEntity userentity = new UserEntity();
		
		userentity.setUserName(traineedto.getEmail());
		userentity.setPassword(traineedto.getPassword());
		userentity.setEnabled(1);
		userentity.setAccountNonExpired(1);
		userentity.setAccountNonLocked(1);
		userentity.setCredentialsNonExpired(1);
		userentity.setStatus(status);
		
		//Insertion of User first
		userdao.addUser(userentity);
		
		traineeentity.setUser(userentity);
		
		//Insertion of Trainee
		traineedao.registerTrainee(traineeentity);
		
	}

}
