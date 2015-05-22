package com.searchmytraining.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {  
	
	@RequestMapping("/tt")
	public String doAction()
	{
		return "pages/FreeLancer/FLprofile";
	}
	
	@RequestMapping("/FLCalender")
	public String doAction1()
	{
		return "pages/FreeLancer/FLCalender";
	}
	@RequestMapping("/calenderdiv")
	public String doAction2()
	{
		return "pages/CodePages/calenderdiv";
	}
	
	@RequestMapping("/institutediv")
	public String doAction3()
	{
		return "pages/CodePages/institutediv";
	}
	@RequestMapping("/freelancerdiv")
	public String doAction4()
	{
		return "pages/CodePages/freelancerdiv";
	}
	@RequestMapping("/seminardiv")
	public String doAction5()
	{
		return "pages/CodePages/seminardiv";
	}
	@RequestMapping("/FLinsights")
	public String doAction6()
	{
		return "pages/FreeLancer/FLinsights";
	}
	@RequestMapping("/FLsetting")
	public String doAction7()
	{
		return "pages/FreeLancer/FLsetting";
	}
	
	@RequestMapping("/index")
	public String doAction8()
	{
		return "index";
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
