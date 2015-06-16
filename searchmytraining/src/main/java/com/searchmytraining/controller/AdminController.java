package com.searchmytraining.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController 
{
	@RequestMapping("/adminLogin")
	public String adminlogin()
	{		
		return "pages/AdminLogin";		
	}
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
	@RequestMapping("/manageAdd")
	public String manAdd()
	{
		return "pages/admin/ManageAdd";
	}
	@RequestMapping("/providerRanking")
	public String provRanking()
	{
		return "pages/admin/ProviderRanking";
	}
	@RequestMapping("/charts")
	public String manCharts()
	{
		return "pages/admin/Charts";
	}

}
