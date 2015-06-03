package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.RoleDAO;
import com.searchmytraining.entity.RoleEntity;

@Repository
public class RoleDaoImpl extends AbstractJpaDAO<RoleEntity> implements RoleDAO {

	@Override
	public void setRoleToUser(RoleEntity role) {
		create(role);
	}
}
