package com.searchmytraining.dao;

import java.util.List;

import com.searchmytraining.entity.IndustrySubCategoryEntity;

public interface IIndustrySubCategoryDAO {
	
	public List<IndustrySubCategoryEntity> getIndustrySubCategories(Integer subid);
	public IndustrySubCategoryEntity getIndustrySubCategory(Integer industrysubcatid);
}
