package com.searchmytraining.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.searchmytraining.entity.GroupRequestEntity;
import com.searchmytraining.entity.TrainingEnquiryEntity;
import com.searchmytraining.service.IGroupTrainingRequestService;
import com.searchmytraining.service.ITrainingEnquiryService;

@Controller
public class RequestController {

	@Autowired
	public IGroupTrainingRequestService groupTrainingService;
	@Autowired
	public ITrainingEnquiryService trainingService;

	@RequestMapping(value = "/requesttraining", method = RequestMethod.POST, produces="application/json")	
	public String requestTraining(@RequestParam("Name") String name,
			@RequestParam("CompanyName") String companyname,
			@RequestParam("title") String title,
			@RequestParam("Email") String email,
			@RequestParam("contact") String phone,
			@RequestParam("city") String city,
			@RequestParam("requirements") String requirements,ModelMap model) {
		
	
	/*public String requestTraining(@RequestBody GroupRequestEntity grouprequest,ModelMap model) {*/
		System.out.println("Caught in requestTraining...");
		
		GroupRequestEntity grouprequest = new GroupRequestEntity();
		grouprequest.setContactname(name);
		grouprequest.setCompanyname(companyname);
		grouprequest.setCourse(title);
		grouprequest.setEmail(email);
		grouprequest.setPhone(phone);
		grouprequest.setTrainingneeds(requirements);
		grouprequest.setCityid(3001L);
		
		/*System.out.println("Contact Name: "+grouprequest.getContactname());*/

		groupTrainingService.saveGroupRequest(grouprequest);

		model.addAttribute("requested_success_msg", "Thank you for your interest, we will get backto you very soon.");
		
		return "index";
		/*return "requesttraining";*/
	}

	@RequestMapping(value = "/trainingenquiry", method = RequestMethod.POST)
	public String trainingenquiry(@RequestParam("FirstName") String firstname,
			@RequestParam("LastName") String lastname,
			@RequestParam("title") String title,
			@RequestParam("Email") String email,
			@RequestParam("contact") String phone,
			@RequestParam("city") String city,
			@RequestParam("requirements") String requirements, ModelMap model) {

		TrainingEnquiryEntity trainingentity = new TrainingEnquiryEntity();
		trainingentity.setFirstname(firstname);
		trainingentity.setLastname(lastname);
		trainingentity.setCourse_title(title);
		trainingentity.setEmail(email);
		trainingentity.setPhone(phone);
		trainingentity.setTrainingneeds(requirements);
		trainingentity.setCityid(3001L);
		
		trainingService.saveTrainingEnquiry(trainingentity);
		
		model.addAttribute("requested_success_msg", "Thank you for your interest, we will get backto you very soon.");

		return "index";
		/*return "requesttraining";*/
	}

}
