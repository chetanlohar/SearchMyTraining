package com.searchmytraining.dao;

import java.util.List;

import com.searchmytraining.entity.PhoneEntity;

public interface IPhoneDAO {

		public void insertPhoneDetails(PhoneEntity entity);
		public List<PhoneEntity> getPhoneByUserId(Long userid);
}
