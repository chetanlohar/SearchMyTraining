package com.searchmytraining.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import com.searchmytraining.dto.TrainingEnquiryDTO;
import com.searchmytraining.entity.GroupRequestEntity;
import com.searchmytraining.service.EmailNotificationService;
import com.searchmytraining.service.IGroupTrainingRequestService;
import com.searchmytraining.service.ITrainingEnquiryService;

@Controller
@RequestMapping("/request")
public class RequestController {

	@Autowired
	public WebApplicationContext context;
	@Autowired
	public IGroupTrainingRequestService groupTrainingService;
	@Autowired
	public ITrainingEnquiryService trainingService;
	@Autowired
	public EmailNotificationService emailNotificationService;
	@Autowired
	public ITrainingEnquiryService trainingenquiryservice;
	
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
		groupTrainingService.saveGroupRequest(grouprequest);
		model.addAttribute("requested_success_msg", "Thank you for your interest, we will get backto you very soon.");
		return "index";
		/*return "requesttraining";*/
	}

	@RequestMapping(value = "/trainingenquiry", method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	public ResponseEntity<String> trainingEnquiry(@RequestBody TrainingEnquiryDTO trainingenquirydto, ModelMap model) {

		System.out.println("caught by trainingEnquiry :-)");
		System.out.println(trainingenquirydto);
		trainingenquiryservice.saveTrainingEnquiry(trainingenquirydto);
		return new ResponseEntity<String>("{\"success\" : true}", HttpStatus.OK);
	}
	
	@RequestMapping("email/send")
	public void sendMail()
	{
		System.out.println("Sending mail...");
		GroupRequestEntity grouprequestentity = (GroupRequestEntity)context.getBean("groupRequestEntity");
		grouprequestentity.setContactname("Chetan H Lohar");
		grouprequestentity.setEmail("chetanlohar@outlook.com");
		grouprequestentity.setPhone("+918446448344");
		grouprequestentity.setTrainingneeds("We need a very specific and real time oriented training for Spring Framework");
		emailNotificationService.sendGroupTrainingRequestNotification(grouprequestentity);
	}
	
	@RequestMapping("verify/email/{emailId}")
	public void sendVerificationLink(@PathVariable("emailId") String emailId)
	{
		System.out.println(emailId);
		/*System.out.println("Sending mail...");*/
		/*emailNotificationService.sendVerificationLinkEmail(useremail);*/
	}
}
