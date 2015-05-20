package com.searchmytraining.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

public abstract class AbstractJpaDAO<T extends Serializable> {

	private Class<T> clazz;

	EntityManager entityManager;
	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	@PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this. entityManager = entityManager;
    }

	public final void setClazz(Class<T> clazzToSet) {
		this.clazz = clazzToSet;
	}

	public T findOne(long id) {
		return entityManager.find(clazz, id);
	}
	
	public T findOne(Integer id) {
		return entityManager.find(clazz, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return entityManager.createQuery("from " + clazz.getName())
				.getResultList();
	}

	public void create(T entity) {
		entityManager.persist(entity);
		
	}

	public T update(T entity) {
		return entityManager.merge(entity);
	}

	public void delete(T entity) {
		entityManager.remove(entity);
	}

	public void deleteById(long entityId) {
		T entity = findOne(entityId);
		delete(entity);
	}
	
	public Integer getMaxId(String classname,String idcolumn)
	{
		
		String query = "select max(e."+idcolumn+") from "+ classname + " e";
		Query q = entityManager.createQuery(query);
		Integer maxid=(Integer)q.getSingleResult();	
		return maxid;
	}
	
	public Object getQueryResult(String query1)
	{
		Query query = entityManager.createQuery(query1);
		return query.getSingleResult();
	}
	
	
}
