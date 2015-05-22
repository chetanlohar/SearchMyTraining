package com.searchmytraining.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IIndustrySubCategoryDAO;
import com.searchmytraining.entity.IndustrySubCategoryEntity;

@Repository
public class IndustrySubCategoryDAO extends AbstractJpaDAO<IndustrySubCategoryEntity> implements IIndustrySubCategoryDAO {

	EntityManager entityManager;
	
	@Override
	public List<IndustrySubCategoryEntity> getIndustrySubCategories(Integer subid) 
	{
		String query = "select indsubcategory from IndustrySubCategoryEntity indsubcategory where indsubcategory.industrycategory.trnIndstrCatId='"+subid+"'";
		entityManager = getEntityManager();
		TypedQuery<IndustrySubCategoryEntity> query1 = entityManager.createQuery(query, IndustrySubCategoryEntity.class);
		List<IndustrySubCategoryEntity> list = query1.getResultList();
		return list;
	}

	@Override
	public IndustrySubCategoryEntity getIndustrySubCategory(
			Integer industrysubcatid) {
		setClazz(IndustrySubCategoryEntity.class);
		return findOne(industrysubcatid);
	}

}
