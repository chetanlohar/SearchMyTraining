package com.searchmytraining.dao;

import com.searchmytraining.entity.CertificationAwardEntity;

public interface IFreeeLCertificationAwrdDAO {
	public void updateCertificationAwrdDet(CertificationAwardEntity certientity);
	public CertificationAwardEntity getCertificationDetByUserId(Long userid);
}
