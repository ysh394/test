package com.team.project.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MonDTO {
	
	private int num;
	
	private String memid;
	private String mempw;
	
	private String title;
	private String episode;
	private String content;
	private String writer;
	private String day;
	private String oriName;
	private String sysName;
	private String realPath;
	private String filePath;
	private Timestamp regTM;
	
	private String sID;
	
	private String uploadTM;
	private String oriFile;
	private String systemFile;
	private String FilePath;
	private int likeSum;
	private int starAvg;	
}
