package com.searchmytraining.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.searchmytraining.entity.CityEntity;
import com.searchmytraining.entity.IndustryCategoryEntity;
import com.searchmytraining.entity.IndustrySubCategoryEntity;
import com.searchmytraining.entity.StateEntity;
import com.searchmytraining.service.ICityService;
import com.searchmytraining.service.IIndustryCategoryService;
import com.searchmytraining.service.IIndustrySubCategoryService;
import com.searchmytraining.service.IStateService;

@Controller
@RequestMapping(value="/common")
public class CommonController {
	
	@Autowired
	public IIndustryCategoryService industrycatservice;
	@Autowired
	public IIndustrySubCategoryService industrysubcatservice;
	@Autowired
	public IStateService state;
	@Autowired
	public ICityService city;
	
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
		return state.getStates(countryid.longValue());
	}
	
	@RequestMapping("/getCities")
	@ResponseBody
	public List<CityEntity> getCitites(@RequestParam("stateid") Integer stateid)
	{
		return city.getCities(stateid.longValue());
	}

}
