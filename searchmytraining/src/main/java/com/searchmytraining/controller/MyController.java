package com.searchmytraining.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping("/")
	public String displayFiles(HttpServletRequest request) {
		
		//Images for Vertical Left pane
		
		String AdsImagesPath_leftvertical = request.getServletContext().getInitParameter(
				"ads_verticalleftscroller");
		String webapppath = request.getServletContext().getRealPath("/");
		List<String> verticalLeftImageList = new ArrayList<String>();
		File verticalLeftImageDir = new File(webapppath+AdsImagesPath_leftvertical);
		for (File imageFile : verticalLeftImageDir.listFiles()) {
			verticalLeftImageList.add(imageFile.getName());
		}
		request.setAttribute("verticalLeftImageList", verticalLeftImageList);
		
		//Images for Vertical Right pane
		
		String AdsImagesPath_rightvertical = request.getServletContext().getInitParameter(
				"ads_verticalrightscroller");
		List<String> verticalRightImageList = new ArrayList<String>();
		File verticalRightImageDir = new File(webapppath+AdsImagesPath_rightvertical);
		for (File imageFile : verticalRightImageDir.listFiles()) {
			verticalRightImageList.add(imageFile.getName());
		}
		request.setAttribute("verticalRightImageList", verticalRightImageList);
		
		//Images for Horizontal main banner

		String AdsImagesPath_HorizontalMainBanner = request.getServletContext().getInitParameter(
				"ads_horizontalmainbanner");
		List<String> horizontalMainImageList = new ArrayList<String>();
		File horizontalMainImageDir = new File(webapppath+AdsImagesPath_HorizontalMainBanner);
		for (File imageFile : horizontalMainImageDir.listFiles()) {
			horizontalMainImageList.add(imageFile.getName());
		}
		request.setAttribute("horizontalMainImageList", horizontalMainImageList);
		return "index";
	}

	@RequestMapping("/tt")
	public String doAction() {
		return "pages/FreeLancer/FLprofile";
	}

	@RequestMapping("/calenderdiv")
	public String doAction2() {
		return "pages/CodePages/calenderdiv";
	}

	@RequestMapping("/institutediv")
	public String doAction3() {
		return "pages/CodePages/institutediv";
	}

	@RequestMapping("/freelancerdiv")
	public String doAction4() {
		return "pages/CodePages/freelancerdiv";
	}

	@RequestMapping("/seminardiv")
	public String doAction5() {
		return "pages/CodePages/seminardiv";
	}

	@RequestMapping("/FLinsights")
	public String doAction6() {
		return "pages/FreeLancer/FLinsights";
	}

	@RequestMapping("/FLsetting")
	public String doAction7() {
		return "pages/FreeLancer/FLsetting";
	}

	@RequestMapping("/Resent")
	public String doAction9() {
		return "pages/FreeLancer/Resentcalender";
	}

	@RequestMapping("/View")
	public String doAction10() {
		return "pages/FreeLancer/AllCalender";
	}

	@RequestMapping("/index")
	public String doAction8() {
		return "index";
	}

	@RequestMapping("/downlodCal")
	public String GetCalenderDownload() {
		return "pages/downlodCalender";
	}

	@RequestMapping("/LOG")
	public String GeLOG() {
		return "pages/LogIn";
	}

	@RequestMapping("/about")
	public String About() {
		return "pages/InternalPages/AboutUs";
	}

	@RequestMapping("/contact")
	public String Contact() {
		return "pages/InternalPages/ContactUs";
	}

	@RequestMapping("/AdvSearch")
	public String Advanc() {
		return "pages/AdvSearch";
	}

	@RequestMapping("/searchview")
	public String searchview() {
		return "searchcalender";
	}

}
