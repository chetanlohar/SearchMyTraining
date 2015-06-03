package com.searchmytraining.service.impl;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.FreelancerDAO;
import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.dao.StatusDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.entity.FreelancerEntity;
import com.searchmytraining.entity.RoleEntity;
import com.searchmytraining.entity.StatusEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IFreelancerService;

@Service
public class FreelancerService implements IFreelancerService
{
	@Autowired
	public FreelancerDAO regdao;

	@Autowired
	public DozerBeanMapper mapper;

	@Autowired
	public RoleDAO roledao;

	@Autowired
	public StatusDAO statusdao;

	@Autowired
	public UserDAO userdao;
	@Autowired
	public UserEntity user;
	@Autowired
	public RoleEntity role;
	@Autowired
	public BCryptPasswordEncoder encoder;
	
	@Override
	@Transactional
	public Integer registerFreelancer(FreelancerDTO freelancerDto) {
		StatusEntity status = statusdao.getStatus(1);
		FreelancerEntity entity = mapper.map(freelancerDto, FreelancerEntity.class);
		user.setUserName(entity.getEmail());
		user.setPassword(encoder.encode(entity.getPassword()));
		user.setEnabled(1);
		user.setAccountNonExpired(1);
		user.setAccountNonLocked(1);
		user.setCredentialsNonExpired(1);
		user.setStatus(status);
		// Insertion of user in users table
		userdao.addUser(user);
		//Insertion of Role in user_roles table
		role.setROLE("TPF");
		role.setUser(user);
		roledao.setRoleToUser(role);
		entity.setUser(user);
		regdao.registerFreelancer(entity);
		return userdao.getMaxUserId("userId");
	}
	

}
