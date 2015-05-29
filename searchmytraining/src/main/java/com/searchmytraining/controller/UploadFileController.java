package com.searchmytraining.controller;


import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.entity.IndustrySubCategoryEntity;
import com.searchmytraining.entity.KeywordEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ICalenderService;
import com.searchmytraining.service.IKeywordService;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController {
	@Autowired
	ICalenderService calnderService;

	@Autowired
	IKeywordService keywordService;

	@RequestMapping(method = RequestMethod.POST)
	public String create(HttpServletRequest request,
			@RequestParam CommonsMultipartFile fileUpload, HttpSession session)
			throws Exception {

		System.out.println("origional file name: "
				+ fileUpload.getOriginalFilename());

		CalenderEntity entity = new CalenderEntity();
		UserEntity usrEntity = new UserEntity();
		IndustrySubCategoryEntity industrySubCat = new IndustrySubCategoryEntity();

		Calendar calendar = Calendar.getInstance();
		Timestamp currentTime = new Timestamp(calendar.getTime().getTime());
		System.out.println("Date from timestamp "
				+ currentTime.toString().substring(0, 11).trim());
		System.out.println("from create method: "
				+ session.getAttribute("userid"));
		try {

			String ctitle = request.getParameter("ctitle");
			String Fdate = request.getParameter("Fdate");
			String Tdate = request.getParameter("Tdate");
			String Ctype = request.getParameter("Ctype");
			Double cPrice = Double.parseDouble(request.getParameter("cPrice"));
			String CDesc = request.getParameter("CDesc");
			String Ckey = request.getParameter("Ckey");
			String[] keyCode = request.getParameterValues("tags[]");

			Integer userid = Integer.parseInt(session.getAttribute("userid")
					.toString());
			Integer trnIndstrSubCatId = Integer.parseInt(request
					.getParameter("Itype"));
			usrEntity.setUserId(userid);
			industrySubCat.setTrnIndstrSubCatId(trnIndstrSubCatId);

			if (fileUpload.getContentType().equals("application/pdf")) {
				System.out.println("same");

			}

			entity.setBrochure("C:\\SearchMT\\"
					+ fileUpload.getOriginalFilename());
			entity.setTitle(ctitle);
			entity.setCode("keyCode");
			entity.setContenttype("" + fileUpload.getContentType());
			entity.setCreatedBy("aaa");
			entity.setCreatedOn(currentTime);
			entity.setDescription(CDesc);
			entity.setStart_date(Fdate);
			entity.setEnd_date(Tdate);
			entity.setStatus("New");

			// Mapping Entity
			entity.setUser(usrEntity);
			entity.setIndstrySubcat(industrySubCat);

			entity.setType(Ctype);
			entity.setPrice(cPrice);
			entity.setTitle(ctitle);
			entity.setUpdatedBy("");
			entity.setRank(0);
			entity.setvFlag("Not Varified");
			entity.setUpdatedOn(currentTime);
			
			calnderService.addCalender(entity);

			  for(String element:keyCode){ 
				  	KeywordEntity keywordEntity = new KeywordEntity();
				  	keywordEntity.setUser(usrEntity);
			  		keywordEntity.setKeword(element);
			  		keywordService.addKeyWords(keywordEntity);
			  	}
			 

			if (fileUpload.getSize() < 1000000000) {
				System.out.println("File is less than the capacity!!!!");
			}
			InputStream inputStream = null;
			OutputStream outputStream = null;
			if (fileUpload.getSize() > 0) {
				inputStream = fileUpload.getInputStream();
				// File realUpload = new File("C:/");
				outputStream = new FileOutputStream("C:\\SearchMT\\"
						+ fileUpload.getOriginalFilename());
				
				 
				int readBytes = 0;
				byte[] buffer = new byte[10000];
				while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
					outputStream.write(buffer, 0, readBytes);
				}
				outputStream.close();
				inputStream.close();

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "pages/FreeLancer/FreeLancerProfile";
	}
}
