package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IProfessionalAssociationDAO;
import com.searchmytraining.entity.ProfessionalAssociationEntity;

@Repository
public class ProfessionalAssociationDAO extends AbstractJpaDAO<ProfessionalAssociationEntity> implements IProfessionalAssociationDAO {

	@Override
	public void addAssociation(ProfessionalAssociationEntity entity) {
		create(entity);
	}

}
