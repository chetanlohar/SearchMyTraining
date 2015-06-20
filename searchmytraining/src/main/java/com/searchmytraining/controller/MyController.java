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
	@RequestMapping("/Resent")
	public String doAction9()
	{
		return "pages/FreeLancer/Resentcalender";
	}
	@RequestMapping("/View")
	public String doAction10()
	{
		return "pages/FreeLancer/AllCalender";
	}
	
	@RequestMapping("/index")
	public String doAction8()
	{
		return "index";
	}
	@RequestMapping("/downlodCal")
	public String GetCalenderDownload()
	{
		return "pages/downlodCalender";
	}
	@RequestMapping("/LOG")
	public String GeLOG()
	{
		return "pages/LogIn";
	}
	@RequestMapping("/about")
	public String About()
	{
		return "pages/InternalPages/AboutUs";
	}
	@RequestMapping("/contact")
	public String Contact()
	{
		return "pages/InternalPages/ContactUs";
	}
	@RequestMapping("/AdvSearch")
	public String Advanc()
	{
		return "pages/AdvSearch";
	}
	@RequestMapping("/searchview")
	public String searchview()
	{
		return "searchcalender";
	}
	
	
}
