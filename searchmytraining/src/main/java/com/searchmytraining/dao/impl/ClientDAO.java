package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IClientDAO;
import com.searchmytraining.entity.ClientEntity;

@Repository
public class ClientDAO extends AbstractJpaDAO<ClientEntity> implements IClientDAO {

	@Override
	public void addClientDetails(ClientEntity entity) {
		create(entity);
	}
}
