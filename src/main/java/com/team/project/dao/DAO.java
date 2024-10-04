package com.team.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.team.project.dto.DTO;
import com.team.project.dto.FriDTO;
import com.team.project.dto.MemberDto;
import com.team.project.dto.MonDTO;
import com.team.project.dto.SatDTO;
import com.team.project.dto.SunDTO;
import com.team.project.dto.ThuDTO;
import com.team.project.dto.TueDTO;
import com.team.project.dto.WedDTO;

@Mapper
public interface DAO {

	// 업로드
	public void mtdUploadWriter(HashMap<String, String> map);
	
	public void mtdUploadCommTbl(@Param("episode") String episode, @Param("title") String title);
	// 목록
	public List<DTO> mtdWebtoonList(@Param("title") String title);
	
	// 별점
	public Double mtdWebtoonListAVG(String title, String episode);
	public void mtdWebtoonListAVGUp(String title, Double starAvg, String num);
	
	// 내용보기(=상세보기)
	public DTO mtdWebtoonView(String title,String num);
	
	public DTO mtdWebtoonViewFirst(String title);
	
	//웹툰 Webtoon
	public List<DTO> mtdWebtoon();
	
	// 웹툰 페이지 요일별 웹툰
	public List<MonDTO> mtdWebtoonMon();
	public List<TueDTO> mtdWebtoonTue();
	public List<WedDTO> mtdWebtoonWed();
	public List<ThuDTO> mtdWebtoonThu();
	public List<FriDTO> mtdWebtoonFri();
	public List<SatDTO> mtdWebtoonSat();
	public List<SunDTO> mtdWebtoonSun();
	
	// 월요일 웹툰
	public List<MonDTO> mtdWebtoonMonRecom();
	// 화요일 웹툰
	public List<MonDTO> mtdWebtoonTueRecom();
	// 수요일 웹툰
	public List<MonDTO> mtdWebtoonWedRecom();
	// 목요일 웹툰
	public List<MonDTO> mtdWebtoonThuRecom();
	// 금요일 웹툰
	public List<MonDTO> mtdWebtoonFriRecom();
	// 토요일 웹툰
	public List<MonDTO> mtdWebtoonSatRecom();
	// 일요일 웹툰
	public List<MonDTO> mtdWebtoonSunRecom();
	
	//웹툰 리스트
	public DTO mtdToonMain(@Param("title")String title);

	public boolean mtdTitleChk(String chkTitle);
	
	public void mtdToonUp(HashMap<String, String> map);
	
	public void mtdToonUpTbl(@Param("title") String title);
	
	//댓글 리스트
	public List<DTO> mtdReviewList(String title,String episode);
	
	// 댓글 개수
	public int mtdReviewCnt(String title,String episode);
	
	//웹툰 댓글 저장
	public int mtdReview(Map<String, String> map);
	
	//웹툰 댓글삭제
	public int mtdReviewDle(String title,String episode, String num);
	
	//웹툰 별점
	public List<DTO> mtdStar(@Param("n1")String starCnt);
	
	//웹툰 뷰페이지 회차순서
	public List<DTO> mtdEpCnt(String title, String num1,String num2);
	
	//웹툰 뷰페이지 회차순서
	public DTO mtdBefore(String title, String num);
	
	//웹툰 뷰페이지 회차순서
	public DTO mtdNext(String title, String num);
	
	// 로그인
	public int mtdLogin(String uid, String upw);	// 로그인
	
	public boolean mtdDupChk(String memID); // 아이디 중복 체크
	
	public int mtdJoin(Map<String, String> map); // 회원가입
	
	public int mtdFavTbl(String memID);	// 관심웹툰 테이블 생성
	
	public int mtdFavProc(String uid, @Param("title") String title, String writer, String img);
	
	public List<DTO> mtdMypageFav(String uid); // 관심 웹툰 등록
	
	public int mtdWebtoonFav(String uid, String title);  // 웹툰 리스트 관심 등록 여부

	public void mtdFavREProc(String uid, String title); // 웹툰 리스트 관심 등록 해제
	
	public MemberDto mtdMyInfo(String memID); // 내정보 확인

	public int mtdMod(Map<String, String> map); // 내정보 이름 수정

	public boolean mtdPWChk(String memPW, String memID); // 내정보 기존 비밀번호 확인

	public int mtdPWMod(String memPWMod, String memID); // 내정보 비밀번호 수정

	public int mtdDel(String memID); // 회원탈퇴하기
		
	public int mtdDelFavTbl(String memID); // 회원탈퇴시 관심웹툰 테이블 삭제
	
	// 공지사항 페이지
	public List<DTO> mtdnoticeList();
	// 공지사항 상세보기 페이지
	public DTO mtdnoticeclick(@Param("seq") String seq);
	public List<DTO> mtdnoticepage();
	public List<DTO> mtdnoticetrd(@Param("seq") String seq);
	
	
	public int mtdnoticeWrite(HashMap<String, String>map); // 공지사항 글저장
}
