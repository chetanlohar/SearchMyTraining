package com.searchmytraining.service.impl;

import java.util.ArrayList;
import java.util.Iterator;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.searchmytraining.dao.CityDAO;
import com.searchmytraining.dao.IClientDAO;
import com.searchmytraining.dao.IContactInfoDAO;
import com.searchmytraining.dao.ILocationInfoDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.dao.IPhoneTypeDAO;
import com.searchmytraining.dao.IProfessionalAssociationDAO;
import com.searchmytraining.dao.InstituteDAO;
import com.searchmytraining.dao.UserDAO;
import com.searchmytraining.dto.ClientDetailsDTO;
import com.searchmytraining.dto.ContactDTO;
import com.searchmytraining.dto.InstituteDTO;
import com.searchmytraining.dto.LocationDTO;
import com.searchmytraining.dto.ProfessionalAssociationDTO;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.ClientEntity;
import com.searchmytraining.entity.InstituteEntity;
import com.searchmytraining.entity.LocationEntity;
import com.searchmytraining.entity.ProfessionalAssociationEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IInstituteServiceDetails;

@Service
public class InstituteServiceDetails implements IInstituteServiceDetails {

	@Autowired
	public WebApplicationContext context;
	
	@Autowired
	public InstituteDAO institutedao;
	@Autowired
	public IContactInfoDAO contactinfodao;
	@Autowired
	public UserDAO userdao;
	@Autowired
	public DozerBeanMapper mapper;
	@Autowired
	public IPhoneTypeDAO phonetypedao;
	@Autowired
	public IPhoneDAO phonedao;
	@Autowired
	public CityDAO citydao;
	@Autowired
	public ILocationInfoDAO locationdao;
	@Autowired
	public IProfessionalAssociationDAO assocdao;
	@Autowired
	public IClientDAO clientdao;
	
	@Override
	@Transactional
	public void updateInstituteDetails(InstituteDTO institudedto) {
		
		String workingdays = institudedto.getWorkingDays().toString().replace("[", "").replace("]", "");
		InstituteEntity entity = mapper.map(institudedto, InstituteEntity.class);
		entity.setWorkingDays(workingdays);
		UserEntity user = userdao.getUser(institudedto.getUserid());
		entity.setUser(user);
		institutedao.updateInstituteDetails(entity);
	}
	
	

	@Override
	@Transactional
	public void updateInstituteContactInfo(ContactDTO instcontactdto) {

		/*ContactInfoEntity contactinfoentity = mapper.map(instcontactdto, ContactInfoEntity.class);
		UserEntity user = userdao.getUser(instcontactdto.getUserid());
		contactinfoentity.setUser(user);
		
		// insertion of ContactInfo details
		contactinfodao.insertContactInfo(contactinfoentity);
		
		//Getting PhoneType
		PhoneTypeEntity phonetypeentity = phonetypedao.getPhoneType(instcontactdto.getPhonetypeid());
		
		PhoneEntity phoneentity = new PhoneEntity();
		phoneentity.setPhonetype(phonetypeentity);
		phoneentity.setPhoneValue(instcontactdto.getPhone());
		phoneentity.setUser(user);
		
		// insertion of Phone Details
		phonedao.insertPhoneDetails(phoneentity);*/
	}

	@Override
	@Transactional
	public void updateInstituteLocationInfo(LocationDTO instlocdto) {
		
		LocationEntity locentity = mapper.map(instlocdto, LocationEntity.class);
		UserEntity user = userdao.getUser(instlocdto.getUserid());
		CityEntity city = citydao.getCity(instlocdto.getCity());
		locentity.setUser(user);
		locentity.setCity(city);
		locationdao.insertLocation(locentity);
	}

	@Override
	@Transactional
	public void updateProfessionalAssociations(ProfessionalAssociationDTO associationdto) {
		
		UserEntity user = userdao.getUser(associationdto.getUserid()); // Getting required User
		ArrayList<String> associationNames = associationdto.getAssocName();
		Iterator<String> i = associationNames.iterator();
		while(i.hasNext())
		{
			ProfessionalAssociationEntity profentity_new = (ProfessionalAssociationEntity)context.getBean("professionalAssociationEntity");
			profentity_new.setUser(user);
			profentity_new.setAssocName(i.next());
			assocdao.addAssociation(profentity_new);  // insertion of Professional Association
		}
	}

	@Override
	@Transactional
	public void updateClientDetails(ClientDetailsDTO clientdetailsdto) {

		UserEntity user = userdao.getUser(clientdetailsdto.getUserid());
		ArrayList<String> clientNames = clientdetailsdto.getClientName();
		Iterator<String> i = clientNames.iterator();
		while(i.hasNext())
		{
			ClientEntity cliententity = (ClientEntity)context.getBean("clientEntity");
			cliententity.setUser(user);
			cliententity.setClientName(i.next());
			clientdao.addClientDetails(cliententity); // Insertion of Client Details
		}
		
	}
	@Override
	public InstituteEntity getInstituteInfo(Long userid) {
		return institutedao.getInstituteInfo(userid);
	}

}
