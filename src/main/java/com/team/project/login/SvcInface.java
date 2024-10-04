package com.team.project.login;

import java.util.Map;

import com.team.project.dto.DTO;
import com.team.project.dto.MemberDto;

public interface SvcInface {
	
	// 로그인 처리
	public int mtdLogin(String uid, String upw);
	
	// 아이디 중복 체크
	public boolean mtdDupChk(String chkID);
	
	// 회원가입 
	public int mtdJoin(Map<String, String> map);
	
	// 관심웹툰 테이블 생성
	public int mtdFavTbl(String memID);
	
	// 내정보 보기
	public MemberDto mtdMyInfo(String memID);

	// 내정보 이름 수정
	public int mtdMod(Map<String, String> map);

	// 내정보 기존 비밀번호 확인
	public boolean mtdPWChk(String memPW, String memID);
	
	// 내정보 비밀번호 수정
	public int mtdPWMod(String memPWMod, String memID);	
	
	// 회원탈퇴하기
	public int mtdDel(String memID);
	
	// 회원탈퇴시 관심웹툰 테이블 삭제
	public int mtdDelFavTbl(String memID);
}
