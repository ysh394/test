package com.team.project.upload;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class UploadChk {
	
	public HashMap<String, String> mtdUploadChk(
			HttpServletRequest req
			) {
		
		HashMap<String, String> map = new HashMap<>();
		String writer = req.getParameter("writer");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String day = req.getParameter("day");
		String oriName = req.getParameter("oriName");
		String sysName = req.getParameter("sysName");
		
		String realPath = req.getParameter("realPath");
		map.put("writer", writer);
		map.put("title", title);
		map.put("content", content);
		map.put("day", day);
		map.put("oriName", oriName);
		map.put("sysName", sysName);
		
		map.put("realPath", realPath);
		
		System.out.println("title"+ title);
		System.out.println("writer"+ writer);
		System.out.println("content"+ content);
		System.out.println("day"+ day);
		System.out.println("원본파일명"+oriName);
		System.out.println("업로드 파일명"+sysName);
		
		System.out.println("저장경로"+realPath);
		
		return map;
	}
}
