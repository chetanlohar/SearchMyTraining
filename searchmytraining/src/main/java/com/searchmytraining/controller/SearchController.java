package com.searchmytraining.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.searchmytraining.enquiry.training.SuggestTraining;

@Controller
public class SearchController {
	
	@RequestMapping(value="/dosearch")
	public void doSearch()
	{
		System.out.println("caughted by SearchController...");
		SuggestTraining suggesttraining = new SuggestTraining();
		List<String> result = suggesttraining.doAutoSuggest("framework");
		Iterator<String> itr = result.iterator();
		while(itr.hasNext())
			System.out.println(itr.next());
	}

}
