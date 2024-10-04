package com.team.project.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberDto {

	private int num;
	private String memID;
	private String memPW;
	private String email;
	private String uname;
	private String birth;
	private String agency;
	private String gender;
	private String region;
	private String phone;
	private Timestamp regTM;
	
}
