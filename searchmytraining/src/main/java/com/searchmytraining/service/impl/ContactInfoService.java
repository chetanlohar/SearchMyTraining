package com.searchmytraining.service.impl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

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
	public WebApplicationContext context;
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
		List<PhoneEntity> phonesdet = phonedao.getPhoneByUserId(contactdto.getUserid().longValue());
		
		while(phonetypeitr.hasNext() && phoneitr.hasNext())
		{
			String phoneValue = phoneitr.next();
			PhoneEntity phoneentity1 = phonedao.getPhoneDet(phoneValue);
			PhoneEntity phoneentity = (PhoneEntity)context.getBean("phoneEntity");
			if(phoneentity1!=null)
			{
				phoneentity1.setPhoneValue(phoneValue);
			}
			else
			{
				phoneentity.setUser(user);
				phoneentity.setPhoneValue(phoneValue);
				phoneentity.setPhonetype(phonetypedao.getPhoneType(phonetypeitr.next()));
			}
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
