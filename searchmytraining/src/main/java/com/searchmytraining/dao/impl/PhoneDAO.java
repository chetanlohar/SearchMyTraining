package com.searchmytraining.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.entity.PhoneEntity;

@Repository
public class PhoneDAO extends AbstractJpaDAO<PhoneEntity> implements IPhoneDAO {

	@Override
	public void insertPhoneDetails(PhoneEntity entity) {
		create(entity);
	}

	@Override
	public List<PhoneEntity> getPhoneByUserId(Long userid) {
		EntityManager entityManger = getEntityManager();
		String strquery="from PhoneEntity phone where phone.user.userId=?";
		TypedQuery<PhoneEntity> typedQuery = entityManger.createQuery(strquery, PhoneEntity.class);
		typedQuery.setParameter(1, userid.intValue());
		List<PhoneEntity> phones = typedQuery.getResultList();
		return phones;
	}
}
