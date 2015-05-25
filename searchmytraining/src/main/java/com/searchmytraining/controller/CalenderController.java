package com.searchmytraining.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.service.ICalenderService;

@Controller
public class CalenderController {
	@Autowired
	ICalenderService iCalnder;
	Integer userId;
	HttpSession session;

	Calendar calendar = Calendar.getInstance();
	Timestamp currentTime = new Timestamp(calendar.getTime().getTime());

	@RequestMapping("/getRecentelyAdded")
	public String getRecentelyAdded() {
		List<CalenderEntity> list = null;
		userId = Integer.parseInt(session.getAttribute("userid").toString());
		list = iCalnder.getRecentelyAdded(userId, currentTime);
		for (CalenderEntity entity : list) {
			System.out.println("Brouchre " + entity.getBrochure() + ": Title "
					+ entity.getTitle() + ": Training Type " + entity.getType()
					+ ": TCreated ON" + entity.getCreatedOn());
		}
		return "pages/downloadCalender";
	}

	@RequestMapping("/getAllCalender")
	public void getAllCalender() {
		List<CalenderEntity> list = null;
		list = iCalnder.getAllCalender();
		for (CalenderEntity entity : list) {
			System.out.println("Brouchre " + entity.getBrochure() + ": Title "
					+ entity.getTitle() + ": Training Type " + entity.getType()
					+ ": TCreated ON" + entity.getCreatedOn());
		}
	}

	@RequestMapping("/getUserCalender")
	public void getUserCalender() {

		List<CalenderEntity> list = null;
		userId = Integer.parseInt(session.getAttribute("userid").toString());
		list = iCalnder.getUserCalender(userId);
		for (CalenderEntity entity : list) {
			System.out.println("Brouchre " + entity.getBrochure() + ": Title "
					+ entity.getTitle() + ": Training Type " + entity.getType()
					+ ": TCreated ON" + entity.getCreatedOn());
		}

	}

	@RequestMapping("/updateCalender")
	public void updateCalender(CalenderEntity entity) {
		iCalnder.updateCalender(entity);
	}

	@RequestMapping("/deletCalender")
	public void deleteCalenderById(Long calId) {

		iCalnder.removeCalender(calId);
	}

}
