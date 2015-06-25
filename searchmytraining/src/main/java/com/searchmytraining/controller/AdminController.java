package com.searchmytraining.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.json.CDL;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.searchmytraining.entity.ChartEntity;
import com.searchmytraining.service.IAdminChartService;

@Controller
public class AdminController 
{
	
	@Autowired
	public IAdminChartService chartservice;
	
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
	public String manCharts(ModelMap model)
	{
		List<ChartEntity> chartstpf = chartservice.tpfRegistered();
		List<ChartEntity> chartstpi = chartservice.tpiRegistered();
		
		JSONArray jsontpf = new JSONArray(chartstpf);
		File file = new File("D:/mycsv.csv");
		String csv = CDL.toString(jsontpf);
		try {
			FileUtils.writeStringToFile(file, csv, "UTF-8");
		} catch (IOException e) {
			System.out.println("IOExcetoin raised...");
			e.printStackTrace();
		};
		
		model.addAttribute("chartstpf", new JSONArray(chartstpf));
		model.addAttribute("chartstpi", new JSONArray(chartstpi));
		
		return "pages/admin/Charts";
	}

}
