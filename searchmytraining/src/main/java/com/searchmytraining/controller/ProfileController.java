package com.searchmytraining.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

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

import com.searchmytraining.dto.CertificationAwardDTO;
import com.searchmytraining.dto.ClientDetailsDTO;
import com.searchmytraining.dto.ContactDTO;
import com.searchmytraining.dto.EmploymentDTO;
import com.searchmytraining.dto.InstituteDTO;
import com.searchmytraining.dto.LocationDTO;
import com.searchmytraining.dto.ProfessionalAssociationDTO;
import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.IndustryCategoryEntity;
import com.searchmytraining.entity.IndustrySubCategoryEntity;
import com.searchmytraining.entity.StateEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ICityService;
import com.searchmytraining.service.IContactInfoService;
import com.searchmytraining.service.IEmploymentService;
import com.searchmytraining.service.IFreeLancerServiceDetails;
import com.searchmytraining.service.IIndustryCategoryService;
import com.searchmytraining.service.IIndustrySubCategoryService;
import com.searchmytraining.service.IInstituteServiceDetails;
import com.searchmytraining.service.ILocationService;
import com.searchmytraining.service.IStateService;
import com.searchmytraining.wrapper.RespnoseWrapper;

@Controller
public class ProfileController {

	
	@Autowired
	public IInstituteServiceDetails instituteservice;
	public UserEntity user;
	
	@Autowired
	public IIndustryCategoryService industrycatservice;
	@Autowired
	public ILocationService locservice;
	
	@Autowired
	public IIndustrySubCategoryService industrysubcatservice;
	
	@Autowired
	public IStateService state;
	
	@Autowired
	public ICityService city;
	
	@Autowired
	public IEmploymentService emplservice;
	
	@Autowired
	public IContactInfoService contactinfoservice;
	
	@Autowired
	public IFreeLancerServiceDetails freelanceservice;
	
	@RequestMapping(value="/updateinstitutedetails",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public InstituteDTO updateInstituteDetails(@RequestBody InstituteDTO institutedto)
	{
		System.out.println("hey caught by TrainerProfileController.... :-)");
		System.out.println(institutedto.getUserid());
		
		instituteservice.updateInstituteDetails(institutedto);
		
		return null;
		/*return institutedto;*/
	}
	
	@RequestMapping(value="/updatecontactinfo",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public void updateContactInfo(@RequestBody @Valid ContactDTO contactdto)
	{
		contactinfoservice.updateContactInfoDet(contactdto);
	}
	
	@RequestMapping(value="/updatelocinfo",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public void updateLocInfo(@RequestBody LocationDTO instlocdto)
	{
		System.out.println("in updateLocInfo...");
		locservice.updateLocationInfo(instlocdto);
	}
	
	@RequestMapping(value="/updateassociationinfo",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public void updateProfessionalAssociation(@RequestBody ProfessionalAssociationDTO associationdto)
	{
		instituteservice.updateProfessionalAssociations(associationdto);
	}
	
	@RequestMapping(value="/updateclientdetails",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public void updateClientDetails(@RequestBody ClientDetailsDTO clientdetailsdto)
	{
		instituteservice.updateClientDetails(clientdetailsdto);	
	}
	
	@RequestMapping(value="/updateFreedetails",method = RequestMethod.POST, produces={"application/json"}, consumes={"application/json"})
	/*@ResponseBody*/
	public void updateFreeDetails(@RequestBody  Object obj)
	{
		System.out.println("In UpdateFreeDetails "+obj.getClass());
		/*instituteservice.updateClientDetails(clientdetailsdto);	*/
	}

	@RequestMapping("/getIndustryCategory")
	@ResponseBody
	public List<IndustryCategoryEntity> getIndustryCategory(@RequestParam("id") Integer industryid, ModelMap model)
	{
		List<IndustryCategoryEntity> l = industrycatservice.getIndustryCategories(industryid);
		model.addAttribute("industrycategories", l);
		return l;
	}
	
	@RequestMapping("/getIndustrySubCategory")
	@ResponseBody
	public List<IndustrySubCategoryEntity> getIndustrySubCategory(@RequestParam("subid") Integer industrysubid, ModelMap model)
	{
		System.out.println("caughed by getIndustrySubCategory method... subid:"+industrysubid);
		return industrysubcatservice.getIndustrySubCategories(industrysubid);
	}
	
	@RequestMapping("/getstates")
	@ResponseBody
	public List<StateEntity> getStates(@RequestParam("countryid") Integer countryid)
	{
		System.out.println("in getStates(...)");
		return state.getStates(countryid);
	}
	
	@RequestMapping("/getCities")
	@ResponseBody
	public List<CityEntity> getCitites(@RequestParam("stateid") Integer stateid)
	{
		return city.getCities(stateid);
	}
	
	@RequestMapping("/TPcalender")
	public String TPcalender(ModelMap model)
	{
		/*model.addAttribute("trainerdto",this.trainerdto1);
		model.addAttribute("user",user);*/
		return "pages/TrainingProvider/TPcalender";
	}
	
	@RequestMapping(value="/updateempdet",method = RequestMethod.POST,produces={"application/json"}, consumes={"application/json"})
	@ResponseBody
	public RespnoseWrapper updateEmploymentdet(@RequestBody @Valid EmploymentDTO empldto,BindingResult result,ModelMap model)
	{
		RespnoseWrapper responsewrapper = new RespnoseWrapper();
		if(result.hasErrors())
		{
			responsewrapper.setValidation_error(true);
			List<FieldError> errors=result.getFieldErrors();
			Map<String,String> errorMsg = new HashMap<String, String>();
			for(FieldError error: errors)
			{
				errorMsg.put(error.getField(), error.getDefaultMessage());
			}
			responsewrapper.setErrorMsg(errorMsg);
			return responsewrapper;
		}
		else
		{
			responsewrapper.setValidation_error(false);
			emplservice.updateEmpldet(empldto);
			return responsewrapper;
		}
	}
	
	@RequestMapping(value="/freelcertiawardDet",method=RequestMethod.POST)
	@ResponseBody
	public RespnoseWrapper updateCertifactionAwrdDet(@RequestBody CertificationAwardDTO certidto, ModelMap model)
	{
		System.out.println(certidto.getAwrdDetails());
		freelanceservice.updateCertiAndAwardInfo(certidto);
		return null;
	}
	
}
