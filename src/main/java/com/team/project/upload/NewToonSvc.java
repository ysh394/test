package com.team.project.upload;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.project.dao.DAO;
import com.team.project.dto.DTO;


@Service
public class NewToonSvc {	
		
	public  HashMap<String,String> mtdToonUp(MultipartHttpServletRequest req){		
							
				
		HashMap<String,String> map = new HashMap<>();
		try {
			req.setCharacterEncoding("UTF-8");
			String title = req.getParameter("title");
			String writer = req.getParameter("writer");
			String content = req.getParameter("content");				
			String day = req.getParameter("day");
			MultipartFile multipartFile = req.getFile("fName");
			String oriName = multipartFile.getOriginalFilename();
			String sysName = System.currentTimeMillis() + oriName.substring(oriName.lastIndexOf("."));
			String realPath="D:\\infoproc_240227/Dell/silsp/springBoot/teamProject/src/main/resources/static/mainImg/" + title +"/";
			
			File folder = new File(realPath);
			if(folder.isDirectory() == false) {
				folder.mkdirs();
			}
			
			File file = new File(realPath + sysName);
			
			multipartFile.transferTo(file);
			
			map.put("title", title);
			map.put("writer", writer);
			map.put("content", content);			
			map.put("oriName", oriName);
			map.put("sysName", sysName);
			map.put("realPath", realPath);
			map.put("day", day);
			
			System.out.println(realPath);
			System.out.println(oriName);
			System.out.println(sysName);
			System.out.println(realPath);
			
			
		
//			dao.mtdToonUp(map);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());			
		}
		return map;
		
		
	}



	
}
