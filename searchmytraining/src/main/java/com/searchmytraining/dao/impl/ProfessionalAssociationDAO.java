package com.searchmytraining.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

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
	@Override
	public List<ProfessionalAssociationEntity> getProfAssocByUserId(Long userid) {
		EntityManager entitymanager = getEntityManager();
		String strquery = "from ProfessionalAssociationEntity prof where prof.user.userId=?";
		TypedQuery<ProfessionalAssociationEntity> typedquery  = entitymanager.createQuery(strquery,ProfessionalAssociationEntity.class);
		
		try{
			typedquery.setParameter(1, userid.intValue());
			List<ProfessionalAssociationEntity> contact = typedquery.getResultList();
			return contact;
		}
		catch(NoResultException e)
		{
			System.out.println(e.getMessage()+"\nContact Info is not Available");
			return null;
		}
	}
}
