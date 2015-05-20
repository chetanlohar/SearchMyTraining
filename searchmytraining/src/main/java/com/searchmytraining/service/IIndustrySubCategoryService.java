package com.searchmytraining.service;

import java.util.List;

import com.searchmytraining.entity.IndustrySubCategoryEntity;

public interface IIndustrySubCategoryService {
	
	public List<IndustrySubCategoryEntity> getIndustrySubCategories(Integer subid);

	public IndustrySubCategoryEntity getIndustrySubCategory(Integer industrysubcatid);

}
