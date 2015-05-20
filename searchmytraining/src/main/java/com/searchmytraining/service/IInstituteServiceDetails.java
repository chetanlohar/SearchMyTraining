package com.searchmytraining.service;

import com.searchmytraining.dto.ClientDetailsDTO;
import com.searchmytraining.dto.ContactDTO;
import com.searchmytraining.dto.InstituteDTO;
import com.searchmytraining.dto.LocationDTO;
import com.searchmytraining.dto.ProfessionalAssociationDTO;

public interface IInstituteServiceDetails {
	
	public void updateInstituteDetails(InstituteDTO entity);
	public void updateInstituteContactInfo(ContactDTO instcontactdto);
	public void updateInstituteLocationInfo(LocationDTO instlocdto);
	public void updateProfessionalAssociations(ProfessionalAssociationDTO associationdto);
	public void updateClientDetails(ClientDetailsDTO clientdetailsdto);
}
