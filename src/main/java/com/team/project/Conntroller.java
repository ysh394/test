package com.team.project;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.team.project.dao.DAO;
import com.team.project.dto.DTO;
import com.team.project.login.SvcInface;
import com.team.project.upload.NewToonSvc;
import com.team.project.upload.UploadSvc;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class Conntroller {
	
	@Autowired
	private DAO dao;
	

	@Autowired
	private SvcInface svcInface;

	@Autowired
	private UploadSvc uploadSvc;
	
	@Autowired
	private NewToonSvc newToon;
	


	
	
	int cnt = 0;
	String referer = "";
	
	
	@RequestMapping("/index")
	public String index(HttpServletRequest req, Model model) {
		cnt++;
		referer = req.getHeader("referer");
		HttpSession session =  req.getSession(false);
		if(session != null) {
		
		String uid = (String)session.getAttribute("uid");
		model.addAttribute("uid" , uid);
		}
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		System.out.println(cnt + " OK!");
		return "index";
		}
	

	
	@RequestMapping("/webtoon")
	public String webtoon(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoon",dao.mtdWebtoon());		
		model.addAttribute("mtdWebtoonMon",dao.mtdWebtoonMon());
		model.addAttribute("mtdWebtoonTue",dao.mtdWebtoonTue());
		model.addAttribute("mtdWebtoonWed",dao.mtdWebtoonWed());
		model.addAttribute("mtdWebtoonThu",dao.mtdWebtoonThu());
		model.addAttribute("mtdWebtoonFri",dao.mtdWebtoonFri());
		model.addAttribute("mtdWebtoonSat",dao.mtdWebtoonSat());
		model.addAttribute("mtdWebtoonSun",dao.mtdWebtoonSun());
		
		return "webtoon";
	}
	@RequestMapping("/webtoon/mon")
	public String webtoonMon(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonMonRecom", dao.mtdWebtoonMonRecom());
		model.addAttribute("mtdWebtoonMon",dao.mtdWebtoonMon());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/mon";
	}
	@RequestMapping("/webtoon/tue")
	public String webtoonTue(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonTueRecom", dao.mtdWebtoonTueRecom());
		model.addAttribute("mtdWebtoonTue",dao.mtdWebtoonTue());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/tue";
	}
	@RequestMapping("/webtoon/wed")
	public String webtoonWed(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonWedRecom", dao.mtdWebtoonWedRecom());
		model.addAttribute("mtdWebtoonWed",dao.mtdWebtoonWed());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/wed";
	}
	@RequestMapping("/webtoon/thu")
	public String webtoonThu(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonThuRecom", dao.mtdWebtoonThuRecom());
		model.addAttribute("mtdWebtoonThu",dao.mtdWebtoonThu());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/thu";
	}
	@RequestMapping("/webtoon/fri")
	public String webtoonFri(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonFriRecom", dao.mtdWebtoonFriRecom());
		model.addAttribute("mtdWebtoonFri",dao.mtdWebtoonFri());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/fri";
	}
	@RequestMapping("/webtoon/sat")
	public String webtoonSat(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonSatRecom", dao.mtdWebtoonSatRecom());
		model.addAttribute("mtdWebtoonSat",dao.mtdWebtoonSat());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/sat";
	}
	@RequestMapping("/webtoon/sun")
	public String webtoonSun(Model model, HttpServletRequest req) {
		referer = req.getHeader("referer");
		model.addAttribute("mtdWebtoonSunRecom", dao.mtdWebtoonSunRecom());
		model.addAttribute("mtdWebtoonSun",dao.mtdWebtoonSun());
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "webtoonpge/sun";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession(false);
		if(session !=null) {
			
		session.invalidate();
		}
		 return "user/logout";
	}
	

	@RequestMapping("/myPage/mypageMain")
	public String mypageIndex(
			HttpServletRequest req,
			Model model) {
		referer = req.getHeader("referer");
		HttpSession session = req.getSession(false);
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		try {

		if(session == null) {
			
			return "redirect:/login";
		} else {
			String uid = (String)session.getAttribute("uid");
			System.out.println("session : " + session.getId());
			System.out.println("uid : " + session.getAttribute("uid"));
			model.addAttribute("mtdMypageFav" ,dao.mtdMypageFav(uid));
			return  "myPage/mypageMain";
		}
		} catch (Exception e) {
			
			return "redirect:/login";
			
		} 
		
	}
	

	@RequestMapping("/myPage/bookmark")
	public String mypageBookMark(Model model) {
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "myPage/bookMark";
	}
	@RequestMapping("/myPage/recent")
	public String mypageRecent(Model model) {
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		return "myPage/recent";
	}
	
	
	@RequestMapping("/webtoonList")
	public String webtoonList(Model model,HttpServletRequest req) {
		referer = req.getHeader("referer");
		System.out.println("OKOK");
		String uid = null;
		String title = req.getParameter("title");
		List<DTO> list = dao.mtdWebtoonList(title);
		model.addAttribute("mtdWebtoonList",list);
		model.addAttribute("mtdToonMain", dao.mtdToonMain(title));
		model.addAttribute("mtdWebtoonViewFirst", dao.mtdWebtoonViewFirst(title));
		model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
		System.out.println(list.size());
		for (DTO dto : list) {
			String dtoTitle = dto.getTitle();
			String num = dto.getNum();
			String episode = dto.getEpisode();
			System.out.println("title : " + dtoTitle);
			System.out.println("episode : " + episode);
			Double star = 0.00; 
			if(dao.mtdWebtoonListAVG(dtoTitle, episode) ==null) {
				dao.mtdWebtoonListAVGUp(dtoTitle,star,num);
				
			} else {
				star = dao.mtdWebtoonListAVG(dtoTitle, episode);
				dao.mtdWebtoonListAVGUp(dtoTitle,star,num);
			}
			System.out.println("별점 : " + star);
	
		}
		
		try {
			
		HttpSession session = req.getSession(false);
		uid = (String)session.getAttribute("uid");
		
		System.out.println(session.getId());
		if(session != null) {
		int chk = 0;
		try {
			chk =  dao.mtdWebtoonFav(uid,title);
			
		} catch (Exception e) {
			model.addAttribute("chk",chk);
		}
		model.addAttribute("chk",chk);
		System.out.println("chk : " + chk);
		}
		} catch (Exception e) {
			int chk = 0;
			model.addAttribute("chk",chk);
			System.out.println(e.getMessage());
		} 
		
		
		return "webtoonList";
	}
	
	//웹툰 뷰 페이지
	@RequestMapping("/webtoonView")
	public String webtoonView(Model model,HttpServletRequest req) {
		referer = req.getHeader("referer");
		String title = req.getParameter("title");
		String num = req.getParameter("num");
		String episode = req.getParameter("episode");
		model.addAttribute("mtdWebtoonView",dao.mtdWebtoonView(title,num));
		HttpSession session = req.getSession(false);
		if (session != null) {
			String uid = (String)session.getAttribute("uid");
			model.addAttribute("uid",uid);
		}
		model.addAttribute("mtdReviewList",dao.mtdReviewList(title,episode));
		int cnt = dao.mtdReviewCnt(title,episode);
		model.addAttribute("mtdReviewCnt",cnt); 
		//웹툰 회차 순서
		model.addAttribute("mtdEpCnt",dao.mtdEpCnt(title,num,num));
		model.addAttribute("mtdBefore",dao.mtdBefore(title, num));
		model.addAttribute("mtdNext",dao.mtdNext(title, num));
		 
		return "/webtoonView";
	}
	
	//목록페이지 리퀘스트 매핑
		@RequestMapping("/noticeList")
		public String noticeList(Model model) {
			model.addAttribute("mtdnoticeList",dao.mtdnoticeList());
			return "notice/noticeList";
		}
		// 공지사항 게시글 클릭 상세페이지 이동
		@RequestMapping("/noticeclick")
		public String noticeclick(HttpServletRequest req, Model model) {
			String seq =req.getParameter("seq");
			model.addAttribute("mtdnoticeclick",dao.mtdnoticeclick(seq));
			model.addAttribute("mtdnoticetrd",dao.mtdnoticetrd(seq));
			return "notice/noticeclick";
		}
		@RequestMapping("/reference/notice")
		public String noticepage(Model model) {
			model.addAttribute("mtdnoticepage",dao.mtdnoticepage());
			return "/reference/notice";
		}
		
		
		


		
		//  게시글 작성 페이지
		@RequestMapping("/noticeWrite")
		public String noticeWrite(Model model) {
			model.addAttribute("mtdnoticeList",dao.mtdnoticeList());
			return "notice/noticeWrite";
		}
		// 글저장 리퀘스트 매핑
		@RequestMapping("/noticeProc")
		public String boardWrite(
				HttpServletRequest req,
				Model model
				) {
				
			    
			   
				HashMap<String, String>map = new HashMap<String, String>();
				
				
				
				String substance = req.getParameter("substance");
				String contents = req.getParameter("contents");
				String title = req.getParameter("title");
				
				System.out.println("substance" + substance);
				System.out.println("contents" + contents);
				System.out.println("title" + title);
				
				
				
				map.put("substance", substance);
				map.put("title", title);
				map.put("contents", contents);
				dao.mtdnoticeWrite(map);
				
				
		
			return "redirect:noticeList";
		}
	
	// 댓글 저장
	@RequestMapping("/reviewSave")    
	public String riviewSave(HttpServletRequest req) {	
			
			String uid = req.getParameter("uid");
			String star = req.getParameter("star");
			String review = req.getParameter("comment");
			String title = req.getParameter("title");
			String episode = req.getParameter("epNum");
			String num = req.getParameter("num");
			System.out.println("num : " + num);
			Map<String, String> map=new HashMap<String, String>();
			map.put("item1", review);
			map.put("item2",star);
			map.put("item3", uid);
			map.put("item4", title);
			map.put("item5", episode);
			map.put("item6", num);
			dao.mtdReview(map);
			System.out.println(star);				
		
		return "redirect:reviewProc";
	}
	@RequestMapping("/reviewProc")
	public String reviewProc() {
		return "reviewProc";
	}
	
	//댓글 삭제
	@RequestMapping("/reviewDle")
	public String reviewDle(HttpServletRequest req) {
		try {
			req.setCharacterEncoding("UTF-8");
			String num = req.getParameter("num");
			String title = req.getParameter("title");
			String episode = req.getParameter("episode");
			
			dao.mtdReviewDle(title,episode,num);
			System.out.println(num);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "/reviewDle";
	}
	
	//////////// 관리자 페이지 ///////////
	@RequestMapping("/manager_member")
	public String managerMember() {
		return "manager/manager_member";
	}
	@RequestMapping("/manager_views")
	public String managerViews() {
		return "manager/manager_views";
	}
	@RequestMapping("/manager_graph")
	public String managerGraph() {
		return "manager/manager_graph";
	}
	@RequestMapping("/manager_comment")
	public String managerComment() {
		return "manager/manager_comment";
	}
	
	@RequestMapping("/manager_revenue")
	public String managerRevenue() {
		return "manager/manager_revenue";
	}
	
	@RequestMapping("/manager_member_popUp")
	public String manager_member_popUp() {
		return "manager/manager_member_popUp";
	}
	
	@RequestMapping("/manager_upload")
	public String manager_upload() {
		return "manager/manager_upload";
	}
//////////관리자 페이지 ///////////
	
	@RequestMapping("/search")
	public String search() {
		return "search";
	}
	
	@RequestMapping("/upload")
	public String upload() {
		return "upload/upload";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest req) {
		referer = req.getHeader("referer");
		System.out.println("header : " + referer);
		return "user/login";
	}

	
	// 로그인 실패 alert 매핑
	@RequestMapping("/user/alertLogin")
	public String alertLogin() {
		return "user/alertLogin";
	}
	
	// 로그인 관련 
	@RequestMapping("/user/loginProc")
	public String loginProc(HttpServletRequest req, RedirectAttributes redirect) {

		String url = "";
		int chkCnt = 0;
			
			String uid = req.getParameter("uid");
			String upw = req.getParameter("upw");
			chkCnt = svcInface.mtdLogin(uid, upw);
			
			redirect.addAttribute("uid", uid);

		try {
			if (chkCnt == 1) {
				HttpSession session = req.getSession();
				session.setMaxInactiveInterval(60*60);
				System.out.println("referer : " + referer);
				session.setAttribute("uid" ,uid);
				String sID = (String)session.getAttribute("uid");
				System.out.println("sID : "+sID);
				System.out.println("세션 아이디 :"+session.getId());
				System.out.println("");
				
				url = referer;
			} else {
				url = "/user/alertLogin";
			}
			
		} catch (Exception e) {
			return "redirect:/index";
		}

		return "redirect:" + url;
	}
	@RequestMapping("user/loginChk")
	public String loginChk() {
		return "user/loginChk";
	}
	
	@RequestMapping("/user/joinAgree")
	public String joinAgree() {
		return "user/joinAgree";
	}
	
	@RequestMapping("/user/joinBegin")
	public String joinBegin() {
		return "user/joinBegin";
	}
	
	// 회원가입 아이디 중복 체크 페이지 리퀘스트 매핑
	@RequestMapping("/user/joinIdDupChk")
	public String joinIdDupChk() {		
		return "/user/joinIdDupChk";
	}
	
	// 회원가입 아이디 중복 체크
		@RequestMapping("/user/idDupChkProc")
		public String idDupChk(HttpServletRequest req, Model model) {
			String chkID = "";
			String resMsg = "";
			boolean chk = false;
			boolean chkUseBtn = false;
			try {
				req.setCharacterEncoding("UTF-8");
				chkID = req.getParameter("chkID");
				chk = svcInface.mtdDupChk(chkID);
			} catch (Exception e) {
				e.getMessage();
			}

			if (chk) {
				resMsg = "사용중인 아이디입니다.";
				chkUseBtn = false;
			} else {
				resMsg = "사용 가능한 아이디입니다.";
				chkUseBtn = true;
			}
			
			model.addAttribute("chkID", chkID);
			model.addAttribute("chkUseBtn", chkUseBtn);
			model.addAttribute("resMsg", resMsg);

			return "user/joinIdDupChk";
		}
	
	// 웹툰 업로드
	@RequestMapping("/uploadProc")
	public String mtdUploadWrite(
			MultipartHttpServletRequest mReq,
			HttpServletRequest req,
			Model model
			) {
		HashMap<String, String> map = uploadSvc.mtdUpload(mReq, req);
		
		dao.mtdUploadWriter(map);
		String title = req.getParameter("title");
		String episode = req.getParameter("episode");
		dao.mtdUploadCommTbl(episode,title);
		model.addAttribute("map",map);
		return "upload/result";
	}
	
	// 회원가입 실행
		@RequestMapping("/user/joinProc")
		public String joinProc(HttpServletRequest req,RedirectAttributes redirect) {

			String url = "";
			String memID = "";
			int chk = 0;
			try {

				req.setCharacterEncoding("UTF-8");
				memID = req.getParameter("memID");
				String memPW = req.getParameter("memPW");
				String email = req.getParameter("email");
				String uname = req.getParameter("uname");
				String birth = req.getParameter("birth");
				String agency = req.getParameter("agency");
				String gender = req.getParameter("gender");
				String region = req.getParameter("region");
				String phone = req.getParameter("phone");
				
				Map<String, String> map = new HashMap<>();
				map.put("memID", memID);
				map.put("memPW", memPW);
				map.put("email", email);
				map.put("uname", uname);
				map.put("birth", birth);
				map.put("agency", agency);
				map.put("gender", gender);
				map.put("region", region);
				map.put("phone", phone);
				
				redirect.addAttribute("memID", memID);
				
				chk = svcInface.mtdJoin(map);

			} catch (Exception e) {
				e.getMessage();
			}

			if (chk == 1) {
				svcInface.mtdFavTbl(memID);
				url = "joinSuccess";
			} else {
				url = "alertJoin";
			}

			return "redirect:/user/" + url;
		}
		
	// 회원가입 실패 alert 매핑
		@RequestMapping("/user/alertJoin")
		public String alertJoin() {
			return "user/alertJoin";
		}	
		
	// 회원가입 성공 alert 매핑
		@RequestMapping("/user/joinSuccess")
		public String joinSuccess(HttpServletRequest req, Model model) {
			
			String memID = "";
			
			try {
				req.setCharacterEncoding("UTF-8");
				memID = req.getParameter("memID");
				HttpSession session = req.getSession();
				String sID = (String)session.getAttribute("uid");
				if (sID != null) {
					return "/index";
				}
				System.out.println("sID : "+sID);
				System.out.println("세션 아이디 :"+session.getId());
			} catch (Exception e) {
				e.getMessage();
			}
			
			model.addAttribute("memID", memID);
			
			return "/user/joinSuccess";
		}
		
	// 관심웹툰 저장	
	@RequestMapping("favProc")
	public String favProc(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String writer = req.getParameter("writer");
		String img = req.getParameter("img");
		HttpSession session = req.getSession(false);
		String res ="";
		try {
			
		if (session == null) {
			return "redirect:/login";
		}
		String uid = (String)session.getAttribute("uid");
		dao.mtdFavProc(uid,title,writer,img);
		System.out.println("uid : " + uid);
		System.out.println("title : " + title);
		System.out.println("img : " + img);
		model.addAttribute("title",title);
		res = "user/favResult";
		}catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/login";
		}
		return res;
	}
	
	// 관심웹툰 해제	
	@RequestMapping("favREProc")
	public String favREProc(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String writer = req.getParameter("writer");
		HttpSession session = req.getSession(false);
		String res ="";
		try {
			
		if (session == null) {
			return "redirect:/login";
		}
		String uid = (String)session.getAttribute("uid");
		dao.mtdFavREProc(uid,title);
		System.out.println("uid : " + uid);
		System.out.println("title : " + title);
		
		model.addAttribute("title",title);
		res = "user/favREResult";
		}catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/login";
		}
		return res;
	}
	
	// 관심웹툰 등록 완료
	@RequestMapping("/favResult")
	public String favResult() {
		return "user/favResult";
	}
	
	// 관심웹툰 해제 완료
	@RequestMapping("/favREResult")
	public String favREResult() {
		return "user/favREResult";
	}
	
	// 신규 웹툰 업로드
	@RequestMapping("/uploadgo")
	public String upload(MultipartHttpServletRequest req, Model model) {		
		HashMap<String, String> map = newToon.mtdToonUp(req);
		dao.mtdToonUp(map);
		dao.mtdToonUpTbl(req.getParameter("title"));
		model.addAttribute("map",map);
		return "redirect:/webtoon";
	}
	
	@RequestMapping("/newToon")
	public String newToon() {		
		return "upload/newToon";
	}
	
	@RequestMapping("/uploadPopup")
	public String uploadPopup(HttpServletRequest req, Model model) {
	
		return "upload/uploadPopup";
	}
	
	@RequestMapping("/titleChk")
	public String titleChk(HttpServletRequest req, Model model) {
		
		String chkTitle = "";
		String res = "";
		boolean chk = false;
		boolean btnChk = false;
		try {
			req.setCharacterEncoding("UTF-8");
			chkTitle = req.getParameter("chkTitle");
			chk=dao.mtdTitleChk(chkTitle.trim());		
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if(chk) {
			res = "사용중";
			btnChk = false;
		}
		else {
			res = "사용가능";
			btnChk = true;
		}	
		
		model.addAttribute("chkTitle",chkTitle);
		model.addAttribute("btnChk",btnChk);
		model.addAttribute("resMsg",res);
 			 			
		System.out.println(res);
		
		
		return "upload/uploadPopup";
	}
	
	// 내정보 페이지
		@RequestMapping("/myInfo/myInfoPage")
		public String myInfoPage(HttpServletRequest req, RedirectAttributes redirect, Model model) {
			String memid = "";
			

			try {

				req.setCharacterEncoding("UTF-8");
				memid = req.getParameter("uid");
				redirect.addAttribute("memID", memid);
				model.addAttribute("mtdMyInfo", svcInface.mtdMyInfo(memid));

			} catch (Exception e) {
				e.getMessage();
			}

			return "/myInfo/myInfoPage";
		}

		// 내정보 수정하기
		@RequestMapping("/myInfo/mtdMod")
		public String unameMod(HttpServletRequest req, Model model) {
			String unameMod = "";
			String memID = "";
			String emailMod = "";
			String birthMod = "";
			String genderMod = "";
			String regionMod = "";
			String agencyMod = "";
			String phoneMod = "";
			int chk = 0;
			String url = "";

			try {
				req.setCharacterEncoding("UTF-8");
				unameMod = req.getParameter("unameMod");
				memID = req.getParameter("memID");
				emailMod = req.getParameter("emailMod");
				birthMod = req.getParameter("birthMod");
				genderMod = req.getParameter("genderMod");
				regionMod = req.getParameter("regionMod");
				agencyMod = req.getParameter("agencyMod");
				phoneMod = req.getParameter("phoneMod");

				Map<String, String> map = new HashMap<String, String>();
				map.put("uname", unameMod);
				map.put("email", emailMod);
				map.put("birth", birthMod);
				map.put("gender", genderMod);
				map.put("region", regionMod);
				map.put("agency", agencyMod);
				map.put("phone", phoneMod);
				map.put("memID", memID);

				chk = svcInface.mtdMod(map);

			} catch (Exception e) {
				e.getMessage();
			}

			model.addAttribute("mtdMyInfo", svcInface.mtdMyInfo(memID));

			if (chk == 1) {
				url = "alertModSuc";
			} else {
				url = "alertMod";
			}

			return "/myInfo/" + url;

		}

		// 내정보 수정성공
		@RequestMapping("/myInfo/alertModSuc")
		public String alertModSuc() {
			return "/myInfo/alertModSuc";
		}

		// 내정보 수정실패
		@RequestMapping("/myInfo/alertMod")
		public String alertMod() {
			return "/myInfo/alertMod";
		}

		// 내정보 비밀번호 변경페이지로 이동
		@RequestMapping("/myInfo/memPWMod")
		public String memPWMod(HttpServletRequest req, RedirectAttributes redirect, Model model) {

			String memID = "";

			try {

				req.setCharacterEncoding("UTF-8");
				memID = req.getParameter("memID");
				model.addAttribute("memID", memID);
				redirect.addAttribute("memID", memID);

			} catch (Exception e) {
				e.getMessage();
			}

			System.out.println("memID : " + memID);

			return "/myInfo/memPWMod";
		}

		// 내정보 비밀번호 변경
		@RequestMapping("/myInfo/memPWModProc")
		public String memPWModProc(HttpServletRequest req, Model model) {
			String memID = "";
			String memPW = "";
			String memPWMod = "";
			boolean chk = false;
			int chkMod = 0;
			String url = "";

			try {

				req.setCharacterEncoding("UTF-8");

				memID = req.getParameter("memID");
				memPW = req.getParameter("memPW");
				memPWMod = req.getParameter("memPWMod");

				model.addAttribute("memID", memID);

				chk = svcInface.mtdPWChk(memPW, memID);
				chkMod = svcInface.mtdPWMod(memPWMod, memID);

			} catch (Exception e) {
				e.getMessage();
			}

			if (chk && chkMod == 1) {
				url = "alertPWModSuc";
			} else if (!chk) {
				url = "alertPW";
			} else if (chkMod == 0) {
				url = "alertPWMod";
			}

			return "/myInfo/" + url;
		}

		// 내정보 비밀번호 변경 성공
		@RequestMapping("/myInfo/alertPWModSuc")
		public String alertPWModSuc() {
			return "/myInfo/alertPWModSuc";
		}

		// 내정보 기존 비밀번호 불일치
		@RequestMapping("/myInfo/alertPW")
		public String alertPW() {
			return "/myInfo/alertPW";
		}

		// 내정보 비밀번호 변경 실패
		@RequestMapping("/myInfo/alertPWMod")
		public String alertPWMod() {
			return "/myInfo/alertPWMod";
		}

		// 회원탈퇴하기
		@RequestMapping("/myInfo/mtdDel")
		public String memDel(HttpServletRequest req) {

			String memID = "";
			String url = "";
			int chk = 0;

			try {
				req.setCharacterEncoding("UTF-8");
				memID = req.getParameter("memID");
				chk = svcInface.mtdDel(memID);
			} catch (Exception e) {
				e.getMessage();
			}

			if (chk == 1) {
				svcInface.mtdDelFavTbl(memID);
				HttpSession session = req.getSession(false);
				session.invalidate();
				url = "alertDelSuc";
			} else {
				url = "alertDelFa";
			}

			return "/myInfo/" + url;
		}

		// 회원탈퇴성공
		@RequestMapping("/myInfo/alertDelSuc")
		public String alertDelSuc(HttpServletRequest req) {
			HttpSession session = req.getSession(false);
			session.invalidate();
			
			return "/myInfo/alertDelSuc";
		}

		// 회원탈퇴실패
		@RequestMapping("/myInfo/alertDelFa")
		public String alertDelFa() {
			return "/myInfo/alertDelFa";
		}
	


}
