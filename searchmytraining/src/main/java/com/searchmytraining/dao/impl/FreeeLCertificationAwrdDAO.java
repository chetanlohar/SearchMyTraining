package com.searchmytraining.dao.impl;

import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.IFreeeLCertificationAwrdDAO;
import com.searchmytraining.entity.CertificationAwardEntity;

@Repository
public class FreeeLCertificationAwrdDAO extends AbstractJpaDAO<CertificationAwardEntity> implements IFreeeLCertificationAwrdDAO {
	
	@Override
	public void updateCertificationAwrdDet(CertificationAwardEntity certientity) {
		System.out.println("in FreeeLCertificationAwrdDAO impl");
		create(certientity);
	}
}
