package com.searchmytraining.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.searchmytraining.enquiry.training.SuggestTraining;
import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.service.ICalenderService;

@Controller
public class SearchController {
	
	@Autowired
	public ICalenderService calendarservice;
	
	
	@RequestMapping(value="/dosearch",method = RequestMethod.GET)
	@ResponseBody
	public List<String> doSearch(@RequestParam("tagName") String tagName)
	{
		SuggestTraining suggesttraining = new SuggestTraining();
		List<String> result = suggesttraining.doAutoSuggest(tagName);
		/*Iterator<String> itr = result.iterator();
		while(itr.hasNext())
			System.out.println(itr.next());*/
		return result;
	}
	
	@RequestMapping(value = "/getCalendars", method = RequestMethod.POST)/*, produces = { "application/json" }, consumes = { "application/json" })*/
	@ResponseBody
	public List<CalenderEntity> getCalendars(@RequestParam("inputkeyword") String inputkeyword)
	{
		List<CalenderEntity> calendars =calendarservice.getCalendersByKeyword(inputkeyword); 
		System.out.println(calendars.size());
		return calendars;
	}
}
