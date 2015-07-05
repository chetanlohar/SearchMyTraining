package com.searchmytraining.service.impl;
import java.util.ArrayList;
import java.util.Iterator;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.searchmytraining.dao.IContactInfoDAO;
import com.searchmytraining.dao.IPhoneDAO;
import com.searchmytraining.dao.IPhoneTypeDAO;
import com.searchmytraining.dto.ContactDTO;
import com.searchmytraining.entity.ContactInfoEntity;
import com.searchmytraining.entity.PhoneEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IContactInfoService;
import com.searchmytraining.service.IUserService;

@Repository
public class ContactInfoService implements IContactInfoService {

	@Autowired
	public DozerBeanMapper mapper;
	@Autowired
	public IUserService userservice;
	@Autowired
	public IPhoneTypeDAO phonetypedao;
	@Autowired
	public IPhoneDAO phonedao;
	@Autowired
	public IContactInfoDAO contactdao;
	@Override
	@Transactional
	public void updateContactInfoDet(ContactDTO contactdto) {
		ContactInfoEntity contactentity = mapper.map(contactdto, ContactInfoEntity.class);
		UserEntity user = userservice.getUser(contactdto.getUserid());
		ArrayList<Integer> phonetypeids = contactdto.getPhonetypeid();
		ArrayList<String> phones = contactdto.getPhone();
		Iterator<Integer> phonetypeitr = phonetypeids.iterator();
		Iterator<String> phoneitr = phones.iterator();
		while(phonetypeitr.hasNext() && phoneitr.hasNext())
		{
			PhoneEntity phoneentity = new PhoneEntity();
			phoneentity.setUser(user);
			phoneentity.setPhoneValue(phoneitr.next());
			phoneentity.setPhonetype(phonetypedao.getPhoneType(phonetypeitr.next()));
			phonedao.insertPhoneDetails(phoneentity);
		}
		contactentity.setUser(user);
		System.out.println(contactentity);
		contactdao.insertContactInfo(contactentity);
	}
	@Override
	public ContactInfoEntity getContactInfoDetailsByUserId(Long userid) {
		return contactdao.getContactInfoDetails(userid);
	}

}
