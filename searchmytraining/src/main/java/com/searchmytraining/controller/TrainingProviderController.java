package com.searchmytraining.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TrainingProviderController 
{
	@RequestMapping("/int")
	public String getTpInsights()
	{
		return "pages/TrainingProvider/Insights";
	}
	
	@RequestMapping("/str")
	public String getTpSettings()
	{
		return "pages/TrainingProvider/TPsetting";
	}
	
	@RequestMapping("/ForgotPass")
	public String getTpForgetPass()
	{
		return "pages/ForgotPass";
	}
}
