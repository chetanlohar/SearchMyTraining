package com.searchmytraining.service;

import com.searchmytraining.dto.CertificationAwardDTO;
import com.searchmytraining.dto.LocationDTO;

public interface IFreeLancerServiceDetails 
{
	public void updateFreeLocationDetails(LocationDTO instlocdto);
	public void updateCertiAndAwardInfo(CertificationAwardDTO certidto);
	
	/*public void updateFreeContactInfo(ContactDTO instcontactdto);
	public void updateFreeEducationInfo();
	public void updateClientDetails(ClientDetailsDTO clientdetailsdto);*/
}
