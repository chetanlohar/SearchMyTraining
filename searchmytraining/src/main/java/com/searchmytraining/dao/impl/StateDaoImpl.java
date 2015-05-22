package com.searchmytraining.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.StateDAO;
import com.searchmytraining.entity.StateEntity;

@Repository
public class StateDaoImpl extends AbstractJpaDAO<StateEntity> implements StateDAO {

	EntityManager entityManager;
	
	@Override
	public StateEntity getState(Integer id) {
		setClazz(StateEntity.class);
		return findOne(id);
	}
	
	@Override
	public List<StateEntity> getStates(Integer countryid)
	{
		entityManager = getEntityManager();
		setClazz(StateEntity.class);
		String query = "select states from StateEntity states where states.country.countryId='"+countryid+"'";
		TypedQuery<StateEntity> query1=entityManager.createQuery(query, StateEntity.class);
		return query1.getResultList();
	}
}
