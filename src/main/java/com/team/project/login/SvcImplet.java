package com.team.project.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.project.dao.DAO;
import com.team.project.dto.DTO;
import com.team.project.dto.MemberDto;



@Service
public class SvcImplet implements SvcInface {

	@Autowired
	DAO memberDao;
	
	// 로그인 실행
	@Override
	public int mtdLogin(String uid, String upw) {
		return memberDao.mtdLogin(uid, upw);		
	}
	
	// 아이디 중복 체크
	@Override
	public boolean mtdDupChk(String chkID) {
		return memberDao.mtdDupChk(chkID);
	}
	
	// 회원가입 실행
	@Override
	public int mtdJoin(Map<String, String> map) {
		return memberDao.mtdJoin(map);
	}
	
	// 관심웹툰 테이블 생성
	@Override
	public int mtdFavTbl(String memID) {
		return memberDao.mtdFavTbl(memID);
	}
	
	// 내정보 보기
		@Override
		public MemberDto mtdMyInfo(String memID) {
			return memberDao.mtdMyInfo(memID);
		}

		// 내정보 이름 수정
		@Override
		public int mtdMod(Map<String, String> map) {
			return memberDao.mtdMod(map);
		}
		
		// 내정보 기존 비밀번호 확인
		@Override
		public boolean mtdPWChk(String memPW, String memID) {
			return memberDao.mtdPWChk(memPW, memID);
		}

		// 내정보 비밀번호 수정
		@Override
		public int mtdPWMod(String memPWMod, String memID) {
			return memberDao.mtdPWMod(memPWMod, memID);
		}
		
		// 회원탈퇴하기
		@Override
		public int mtdDel(String memID) {
			return memberDao.mtdDel(memID);
		}

		// 회원탈퇴시 관심웹툰 테이블 삭제
		@Override
		public int mtdDelFavTbl(String memID) {
			return memberDao.mtdDelFavTbl(memID);
		}
}
