package com.searchmytraining.service;

import java.util.List;

import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.entity.CertificationAwardEntity;
import com.searchmytraining.entity.FreeLancerProfileEntity;
import com.searchmytraining.entity.FreelancerEntity;
import com.searchmytraining.entity.PhoneEntity;

public interface IFreelancerService
{
	public Integer registerFreelancer(FreelancerDTO freelancerDto);
	public FreelancerEntity getFreeLancerDetByUserId(Long userid);
	public CertificationAwardEntity getCertificationDetByUserId(Long userid);
	public void insertFlProfDet(FreeLancerProfileEntity entity);
	public void updateFlProfDet(FreeLancerProfileEntity entity);
	public FreeLancerProfileEntity getFLProfileDet(Long userId);
	public List<PhoneEntity> getFLPhoneDetails(Long userId);
}
