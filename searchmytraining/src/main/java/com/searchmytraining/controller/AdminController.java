package com.searchmytraining.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController 
{
	
	@RequestMapping("/AdminPages")
	public String adminPage()
	{		
		return "pages/admin/AdminPages";		
	}
	@RequestMapping("/accountSetting")
	public String acntSetting()
	{		
		return "pages/admin/AccountSetting";		
	}
	@RequestMapping("/manageCalender")
	public String magCalender()
	{		
		return "pages/admin/ManageCalender";		
	}
	@RequestMapping("/manageTrainings")
	public String manTraining()
	{
		return "pages/admin/ManageTrainings";
	}
	@RequestMapping("/manageServices")
	public String manServices()
	{
		return "pages/admin/ManageServices";
	}
	@RequestMapping("/manageCareer")
	public String manCareer()
	{
		return "pages/admin/ManageCareer";
	}

}
