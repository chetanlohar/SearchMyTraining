package com.searchmytraining.controller;
import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;



import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController {
	@RequestMapping(method = RequestMethod.POST)
	public String create(HttpServletRequest request, 
			@RequestParam CommonsMultipartFile fileUpload,Session session) throws Exception {
		try {
			System.out.println(fileUpload.getOriginalFilename());
			System.out.println("ctitle "+request.getParameter("ctitle"));
			//System.out.println("Object class "+uploadItem.getClass());
			
			String ctitle= request.getParameter("ctitle");
			String Fdate= request.getParameter("Fdate");
			String Tdate = request.getParameter("Tdate");
			String Ctype = request.getParameter("Ctype");
			String cPrice = request.getParameter("cPrice");
			String CDesc = request.getParameter("CDesc");
			String Ckey = request.getParameter("Ckey");
			String userid= request.getParameter("userid");
			
			System.out.println("\nctitle "+ctitle+"\nFdate "+Fdate+"\nTdate "+Tdate+"Ctype "+Ctype+"\ncPrice "+cPrice+"\nCDesc "+CDesc+"\nCkey "+Ckey+"\nuserid "+userid);
			
			
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
		return "pages/FreeLancer/FreeLancerProfile";
	}
}
