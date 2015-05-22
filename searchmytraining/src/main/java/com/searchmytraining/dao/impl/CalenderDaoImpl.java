package com.searchmytraining.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.CalenderDAO;
import com.searchmytraining.entity.CalenderEntity;

@Repository
public class CalenderDaoImpl extends AbstractJpaDAO<CalenderEntity> implements
		CalenderDAO {
	EntityManager entityManager;

	@Override
	public void addCalender(CalenderEntity entity) {
		create(entity);
	}

	@Override
	public List<CalenderEntity> getRecentelyAdded(Integer userId,
			Timestamp timestamp) {
		String query = "SELECT trngId,CODE,title,keywords,start_date,end_date,price,brochure,TYPE,STATUS,createdOn,createdBy,updatedOn,updatedBy,userId,description,contenttype FROM tbl_trngcalender WHERE userId="
				+ userId + " and DATE(createdOn)=" + timestamp.toString().substring(0, 11).trim();
		entityManager = getEntityManager();
		TypedQuery<CalenderEntity> query1 = entityManager.createQuery(query,
				CalenderEntity.class);
		List<CalenderEntity> l = query1.getResultList();
		return l;
	}

	@Override
	public List<CalenderEntity> getUserCalender(Integer userId) {
		String query = "SELECT trngId,CODE,title,keywords,start_date,end_date,price,brochure,TYPE,STATUS,createdOn,createdBy,updatedOn,updatedBy,userId,description,contenttype FROM tbl_trngcalender WHERE userId="
				+ userId;
		entityManager = getEntityManager();
		TypedQuery<CalenderEntity> query1 = entityManager.createQuery(query,
				CalenderEntity.class);
		List<CalenderEntity> l = query1.getResultList();
		return l;
	}

	@Override
	public List<CalenderEntity> getAllCalender() {
		setClazz(CalenderEntity.class);
		return findAll();
	}

	@Override
	public String updateCalender(CalenderEntity entity) {
		update(entity);
		return "success";
	}

	@Override
	public void removeCalender(long calenderId) {
		deleteById(calenderId);
	}

}