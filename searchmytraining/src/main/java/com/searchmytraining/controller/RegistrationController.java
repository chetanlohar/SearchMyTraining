package com.searchmytraining.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.WebApplicationContext;

import com.searchmytraining.dto.FreelancerDTO;
import com.searchmytraining.dto.TraineeDTO;
import com.searchmytraining.dto.TrainerDTO;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.EmploymentEntity;
import com.searchmytraining.entity.IndustryCategoryEntity;
import com.searchmytraining.entity.IndustrySubCategoryEntity;
import com.searchmytraining.entity.InstituteEntity;
import com.searchmytraining.entity.LocationEntity;
import com.searchmytraining.entity.StateEntity;
import com.searchmytraining.entity.TraineeEntity;
import com.searchmytraining.entity.TrainerEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ICityService;
import com.searchmytraining.service.ICountryService;
import com.searchmytraining.service.IEmploymentService;
import com.searchmytraining.service.IFreelancerService;
import com.searchmytraining.service.IIndustryCategoryService;
import com.searchmytraining.service.IIndustrySerivice;
import com.searchmytraining.service.IIndustrySubCategoryService;
import com.searchmytraining.service.IInstituteServiceDetails;
import com.searchmytraining.service.ILocationService;
import com.searchmytraining.service.IStateService;
import com.searchmytraining.service.ITraineeService;
import com.searchmytraining.service.ITrainerService;
import com.searchmytraining.service.IUserService;
import com.searchmytraining.wrapper.RespnoseWrapper;

@Controller
@SessionAttributes("userid")
public class RegistrationController {

	@Autowired
	public WebApplicationContext context;
	
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
	public IIndustrySubCategoryService indsubcatindservice;
	
	@Autowired
	public IEmploymentService employmentservice;
	
	@Autowired
	public IInstituteServiceDetails instituteservice;
	
	@Autowired
	public ILocationService locservice;
	
	@Autowired
	public IStateService stateservice;
	@Autowired
	public ICityService cityservice;
	
	@Autowired
	public ICountryService countryservice;

	public UserEntity user;
	public TraineeDTO traineedto1;

	public TrainerDTO trainerdto1;
	public Integer userid;

	public FreelancerDTO freelancerDto1;

	@RequestMapping(value = "/trainingprovider_reg", method = RequestMethod.POST, produces = { "application/json" }, consumes = { "application/json" })
	@ResponseBody
	public RespnoseWrapper TrainingProviderRegistration(
			@RequestBody @Valid TrainerDTO trainerdto, BindingResult result,
			ModelMap model, HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
		RespnoseWrapper response1 = (RespnoseWrapper)context.getBean("respnoseWrapper");
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
			session.setAttribute("userid",userid);
		}
		return response1;
	}

	@RequestMapping("/trainingprovider_updateprofile")
	public String TrainingProviderProfileMapping(@RequestParam("username") String username,ModelMap model, HttpSession session) {
		
		UserEntity user = userservice.getUser(username);
		session.setAttribute("userid", user.getUserId());
		System.out.println("userid: "+user.getUserId());
		TrainerEntity trainer = trainerservice.getTrainerByUserid(user.getUserId().longValue());
		session.setAttribute("trainer", trainer);
		return "pages/TrainingProvider/TrainingProviderProfile";
		
	}

	@RequestMapping("/trainerprofile")
	public String trainerProfile(ModelMap model,HttpSession session) {
		
		TrainerEntity trainer = (TrainerEntity)session.getAttribute("trainer");
		System.out.println("from /trainerprofile... userid:"+trainer.getUser().getUserId());
		
		// Institute Information
		
		LocationEntity location = locservice.findLocDet(trainer.getUser().getUserId());
		if(location!=null)
		{
			List<StateEntity> states = stateservice.getStates(location.getCity().getState().getCountry().getCountryId());
			List<CityEntity> cities = cityservice.getCities(location.getCity().getState().getStateId());
			Long country_value = location.getCity().getState().getCountry().getCountryId();
			model.addAttribute("country_value",country_value);
			model.addAttribute("location", location);
			model.addAttribute("states",new JSONArray(states));
			model.addAttribute("cities",new JSONArray(cities));
		}
		
		InstituteEntity instituteinfo = instituteservice.getInstituteInfo(trainer.getUser().getUserId().longValue());
		if(instituteinfo!=null)
			model.addAttribute("instituteinfo", instituteinfo);
		model.addAttribute("countries",countryservice.getAllCountries());
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
		model.addAttribute("freelancerDto", this.freelancerDto1);
		return "pages/FreeLancer/FreeLancerProfile";
	}

	@RequestMapping("/FLprofile")
	public String freeLancerProfile(ModelMap model, HttpSession session) {
		System.out.println("from /Flprofile userid: "+session.getAttribute("userid"));
		model.addAttribute("freelancerDto", this.freelancerDto1);
		model.addAttribute("countries",countryservice.getAllCountries());
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
			ITraineeService traineeser = (ITraineeService)context.getBean("traineeService");
			System.out.println("traineeser ref: "+traineeser);
			traineeservice.registerTrainee(traineedto);
			Integer userid = userservice.getMaxUserId("userId");  // Please modify this ASAP
			session.setAttribute("userid", userid);
			model.addAttribute("userid", userid);
			return response1;
		}
	}

	@RequestMapping("/trainee_updateprofile")
	public String traineeProfileMapping(@RequestParam("username") String username, ModelMap model, HttpSession session) {
		UserEntity user = userservice.getUser(username);
		session.setAttribute("userid", user.getUserId());
		TraineeEntity trainee = traineeservice.getTrainee(user.getUserId());
		System.out.println("traineeid : "+trainee.getTraineeId());
		session.setAttribute("trainee", trainee);
		return "pages/Trainee/TraineeProfile";
	}

	@RequestMapping("/trainprofile")
	public String updateTraineeProfile(ModelMap model, HttpSession session) {
		
		TraineeEntity trainee = (TraineeEntity) session.getAttribute("trainee");
		Integer indcatid=0;
		try
		{
			//Employement Details
			
			System.out.println("userid is: "+trainee.getUser().getUserId());
			EmploymentEntity emplentity = employmentservice.findEmplDet(trainee.getUser().getUserId());
			indcatid=emplentity.getIndsubcat().getIndustrycategory().getTrnIndstrCatId();
			List<IndustrySubCategoryEntity> indsubsubcatlist = indsubcatindservice.getIndustrySubCategories(indcatid);
			Integer indid = emplentity.getIndsubcat().getIndustrycategory().getIndustry().getTrnIndstrId();
			List<IndustryCategoryEntity> indcatlist = industrycategoryser.getIndustryCategories(indid);
			Integer indsubcatid = emplentity.getIndsubcat().getTrnIndstrSubCatId();
			for(IndustryCategoryEntity indcatName:indcatlist)
				System.out.println(indcatName.getIndstrCatName());
			model.addAttribute("industrycategories", new JSONArray(indcatlist));
			model.addAttribute("industrysubcat",new JSONArray(indsubsubcatlist));
			model.addAttribute("employmentdetails", emplentity);
			
			//Location Details
			
			LocationEntity location = locservice.findLocDet(trainee.getUser().getUserId());
			System.out.println(location);
			List<StateEntity> states = stateservice.getStates(location.getCity().getState().getCountry().getCountryId());
			List<CityEntity> cities = cityservice.getCities(location.getCity().getState().getStateId());
			Long country_value = location.getCity().getState().getCountry().getCountryId();
			model.addAttribute("country_value",country_value);
			model.addAttribute("locentity",location);
			model.addAttribute("states",new JSONArray(states));
			model.addAttribute("cities",new JSONArray(cities));
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("New User... No result available");
			model.addAttribute("industrycategories",new JSONArray(industrycategoryser.getIndustryCategories()));
			model.addAttribute("industry_value",0);
			model.addAttribute("industry_cat_value",0);
			model.addAttribute("industry_subcat_value",0);
		}
		finally
		{
			model.addAttribute("industries",new JSONArray(industryservice.getIndustries()));
			model.addAttribute("countries",countryservice.getAllCountries());
		}
		return "pages/Trainee/Trainprofile";
	}

}
