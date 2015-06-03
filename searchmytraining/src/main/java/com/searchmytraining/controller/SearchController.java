package com.searchmytraining.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.searchmytraining.enquiry.training.SuggestTraining;

@Controller
public class SearchController {
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
}
