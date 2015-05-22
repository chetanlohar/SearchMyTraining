package com.searchmytraining.controller;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.entity.UserEntity;
import com.searchmytraining.service.ICalenderService;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController {
	@Autowired
	ICalenderService calnderService;
	
	@RequestMapping(method = RequestMethod.POST)
	public String create(HttpServletRequest request, 
			@RequestParam CommonsMultipartFile fileUpload,HttpSession session) throws Exception {
		
		CalenderEntity entity = new CalenderEntity();
		UserEntity usrEntity=new UserEntity();
		Calendar calendar = Calendar.getInstance();
		Timestamp currentTime = new Timestamp(calendar.getTime().getTime());
		System.out.println("Date from timestamp "+currentTime.toString().substring(0, 11).trim());
		System.out.println("from create method: "+session.getAttribute("userid"));
		try {
			/*System.out.println(fileUpload.getOriginalFilename());*/
		/*	
			byte[] buffer = new byte[1024];
			FileOutputStream fos = new FileOutputStream("C:\\SearchMT\\" 
						+ fileUpload.getOriginalFilename());
    		ZipOutputStream zos = new ZipOutputStream(fos);
    		ZipEntry ze= new ZipEntry(fileUpload.getOriginalFilename());
    		zos.putNextEntry(ze);
    		FileInputStream in = new FileInputStream("C:\\SearchMT\\" 
					+ fileUpload.getOriginalFilename());
 
    		int len=0;
    		while ((len = in.read(buffer)) > 0) {
    			zos.write(buffer, 0, len);
    		}
 
    		in.close();
    		zos.closeEntry();
 
    		//remember close it
    		zos.close();
 
    		System.out.println("Done");*/
			
			
			String ctitle= request.getParameter("ctitle");
			String Fdate= request.getParameter("Fdate");
			String Tdate = request.getParameter("Tdate");
			String Ctype = request.getParameter("Ctype");
			Double cPrice = Double.parseDouble(request.getParameter("cPrice"));
			String CDesc = request.getParameter("CDesc");
			String Ckey = request.getParameter("Ckey");
			Integer userid= Integer.parseInt(session.getAttribute("userid").toString());
			usrEntity.setUserId(userid);
			if(fileUpload.getContentType().equals("application/pdf")){
				System.out.println("same");
				
			}
		/*	System.out.println("\nctitle "+ctitle+"\nFdate "+Fdate+"\nTdate "+Tdate+"Ctype "+Ctype+"\ncPrice "+cPrice+"\nCDesc "+CDesc+"\nCkey "+Ckey+"\nuserid "+userid);*/
			
			entity.setBrochure("C:\\SearchMT\\" 
					+ fileUpload.getOriginalFilename());
			entity.setTitle(ctitle);
			entity.setCode("aaa");
			entity.setContenttype(""+fileUpload.getContentType());
			entity.setCreatedBy("aaa");
			entity.setCreatedOn(currentTime);
			entity.setDescription(CDesc);
			entity.setStart_date(Fdate);
			entity.setEnd_date(Tdate);
			entity.setKeywords(Ckey);
			entity.setStatus("New");
			entity.setUser(usrEntity);
			entity.setType(Ctype);
			entity.setPrice(cPrice);
			entity.setTitle(ctitle);
			entity.setUpdatedBy("");
			entity.setUpdatedOn(currentTime);
			System.out.println("path "+entity.getBrochure());
			calnderService.addCalender(entity);
			if(fileUpload.getSize()<1000000000){
				System.out.println("File is less than the capacity!!!!");
			}
			InputStream inputStream = null;
			OutputStream outputStream = null;
			if (fileUpload.getSize() > 0) {
				inputStream = fileUpload.getInputStream();
				// File realUpload = new File("C:/");
				outputStream = new FileOutputStream("C:\\SearchMT\\" 
						+ fileUpload.getOriginalFilename());
				/*System.out.println("====22=========");
				System.out.println(fileUpload.getOriginalFilename());
				System.out.println("=============");*/
				int readBytes = 0;
				byte[] buffer = new byte[10000];
				while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
					//System.out.println("===ddd=======");
					outputStream.write(buffer, 0, readBytes);
				}
				outputStream.close();
				inputStream.close();
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
/*		session.setAttribute("userid", session.getAttribute("userid"));*/
		return "pages/FreeLancer/FreeLancerProfile";
	}
}
