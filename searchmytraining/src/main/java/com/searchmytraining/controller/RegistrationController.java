package com.searchmytraining.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.searchmytraining.dao.CountryDAO;
import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.dto.TraineeDTO;
import com.searchmytraining.dto.TrainerDTO;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.IFreelancerService;
import com.searchmytraining.service.IIndustryCategoryService;
import com.searchmytraining.service.IIndustrySerivice;
import com.searchmytraining.service.ITraineeService;
import com.searchmytraining.service.ITrainerService;
import com.searchmytraining.service.IUserService;
import com.searchmytraining.wrapper.RespnoseWrapper;

@Controller
@SessionAttributes("user_id")
public class RegistrationController {

	@Autowired
	public ITrainerService trainerservice;

	@Autowired
	public ITraineeService traineeservice;

	@Autowired
	public IUserService userservice;

	@Autowired
	public IFreelancerService freelancerservice;

	@Autowired
	public IIndustrySerivice industryservice;

	@Autowired
	public IIndustryCategoryService industrycategoryser;
	
	@Autowired
	public CountryDAO countrydao;

	public UserEntity user;
	public TraineeDTO traineedto1;

	public TrainerDTO trainerdto1;
	public Integer userid;

	public FreelancerDTO freelancerDto1;

	@RequestMapping(value = "/trainingprovider_reg", method = RequestMethod.POST, produces = { "application/json" }, consumes = { "application/json" })
	@ResponseBody
	public RespnoseWrapper TrainingProviderRegistration(
			@RequestBody @Valid TrainerDTO trainerdto, BindingResult result,
			ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		RespnoseWrapper response1 = new RespnoseWrapper();
		response1.setValidation_error(true);
		response1.setId(501);
		if (result.hasErrors()) {
			response1.setId(101);
			response1.setValidation_error(true);

			List<FieldError> errors = result.getFieldErrors();
			Map<String, String> errorMsg = new HashMap<String, String>();
			for (FieldError error : errors) {
				System.out.println(error.getField() + " :-: "
						+ error.getDefaultMessage());
				errorMsg.put(error.getField(), error.getDefaultMessage());
			}
			response1.setErrorMsg(errorMsg);
		} else {
			response1.setValidation_error(false);
			this.trainerdto1 = trainerdto;
			userid = trainerservice.registerTrainer(trainerdto);
		}
		return response1;
	}

	@RequestMapping("/trainingprovider_updateprofile")
	public String TrainingProviderProfileMapping(ModelMap model) {
		userid = userservice.getMaxUserId("userId");
		user = userservice.getUser(userid);
		model.addAttribute("trainerdto", this.trainerdto1);
		model.addAttribute("user", user);
		return "pages/TrainingProvider/TrainingProviderProfile";
	}

	@RequestMapping("/trainerprofile")
	public String trainerProfile(ModelMap model) {
		model.addAttribute("trainerdto", this.trainerdto1);
		model.addAttribute("user", user);
		return "pages/TrainingProvider/TPprofile";
	}

	// For Freelancer New Registration
	@RequestMapping(value = "/freelaancer_reg", method = RequestMethod.POST, produces = { "application/json" }, consumes = { "application/json" })
	@ResponseBody
	public FreelancerDTO freelaancerRegistration(
			@RequestBody FreelancerDTO freelancerDto,HttpSession session) throws Exception {
		
		this.freelancerDto1 = freelancerDto;
		userid = freelancerservice.registerFreelancer(freelancerDto);
		session.setAttribute("userid", userid);
		return freelancerDto;

	}

	@RequestMapping("/freelancer_updateprofile")
	public String freelancerProfileMapping(ModelMap model) {
		userid = userservice.getMaxUserId("userId");
		user = userservice.getUser(userid);
		model.addAttribute("freelancerDto", this.freelancerDto1);
		model.addAttribute("user", user);
		return "pages/FreeLancer/FreeLancerProfile";
	}

	@RequestMapping("/FLprofile")
	public String freeLancerProfile(ModelMap model) {
		model.addAttribute("freelancerDto", this.freelancerDto1);
		model.addAttribute("user_id", userid);
		return "pages/FreeLancer/FLprofile";
	}

	// Trainee Registration

	@RequestMapping("/trainee_reg")
	@ResponseBody
	public RespnoseWrapper traineeRegistration(
			@RequestBody @Valid TraineeDTO traineedto, BindingResult result,
			ModelMap model, HttpSession session) {
		RespnoseWrapper response1 = new RespnoseWrapper();
		if (result.hasErrors()) {
			response1.setId(101);
			response1.setValidation_error(true);
			List<FieldError> errors = result.getFieldErrors();
			Map<String, String> errorMsg = new HashMap<String, String>();
			for (FieldError error : errors)
			{
				errorMsg.put(error.getField(), error.getDefaultMessage());
				System.out.println(error.getField() + " :-: "+ error.getDefaultMessage());
			}
			response1.setErrorMsg(errorMsg);
			return response1;
		} else {
			response1.setValidation_error(false);
			this.traineedto1 = traineedto;
			traineeservice.registerTrainee(traineedto);
			Integer userid = userservice.getMaxUserId("userId");
			session.setAttribute("userid", userid);
			model.addAttribute("userid", userid);
			return response1;
		}
	}

	@RequestMapping("/trainee_updateprofile")
	public String traineeProfileMapping(ModelMap model) {
		return "pages/Trainee/TraineeProfile";
	}

	@RequestMapping("/trainprofile")
	public String updateTraineeProfile(ModelMap model, HttpSession session) {
		
		model.addAttribute("userid", session.getAttribute("userid"));
		model.addAttribute("traineedto", traineedto1);
		model.addAttribute("industries", industryservice.getIndustries());
		model.addAttribute("industrycategories",
				industrycategoryser.getIndustryCategories());
		model.addAttribute("countries",countrydao.getAllCountries());
		return "pages/Trainee/Trainprofile";
	}

}
