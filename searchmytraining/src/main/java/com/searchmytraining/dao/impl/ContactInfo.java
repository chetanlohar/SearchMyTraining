package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IContactInfoDAO;
import com.searchmytraining.entity.ContactInfoEntity;

@Repository
public class ContactInfo extends AbstractJpaDAO<ContactInfoEntity> implements IContactInfoDAO{

	@Override
	public void insertContactInfo(ContactInfoEntity entity) {
		create(entity);
	}

}
