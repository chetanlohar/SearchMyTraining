package com.searchmytraining.service;

import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.entity.FreelancerEntity;

public interface IFreelancerService
{
	public Integer registerFreelancer(FreelancerDTO freelancerDto);
	public FreelancerEntity getFreeLancerDetByUserId(Long userid);

}
