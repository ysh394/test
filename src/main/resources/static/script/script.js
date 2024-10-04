$(function() {
	// 헤더 버튼
	let user = $("#LogInOut>a>span#userName").html();
	if(user=="") {
		$("#userLogOut").hide()
		$("#userLogIn").show()
	} else {
		$("#userLogOut").show()
		$("#userLogIn").hide()
	}
	
	
	
	//////////////////// 공지사항 더보기 버튼 ///////////////////
	$("#moreNotice").click(function() {
		location.href="/notice/list"
	})
	
	$(".dayOfWeek").html(function() {
		const now = new Date();
		const week = new Array("일요웹툰", "월요웹툰", "화요웹툰", "수요웹툰", "목요웹툰", "금요웹툰", "토요웹툰");
		let day = now.getDay();
		let dayOfWeek = week[day];
		
		$(this).html(dayOfWeek);
	})
	$("#mainWebtoon").html(function() {
		const now = new Date();
		const dayOf = new Array(7,0,1,2,3,4,5);
		let day = now.getDay();
		switch(dayOf[day]) {
			case 0 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 1 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 2 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 3 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 4 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 5 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
			
			case 6 : 
			$(this).children("ul").eq(dayOf[day]).addClass("dayOfWeekColor");
			$(this).children("ul").eq(dayOf[day]).children("li").eq(0).addClass("dayOfWeekTab");
			break;
		}
	})
	
	
	
	
	/////////////////// 헤더 GNB 메뉴 (홈 웹툰 마이페이지)  /////////////////

	
	
	///////////////////// 요일별 탭 버튼 클릭 /////////////////////
	$("#gnbDay").children().click(function() {
		let val = $(this).val();
		let day = "";
		switch (val) {
			case 1 : day = "mon";
			break;
		
			case 2 : day = "tue";
			break;
		
			case 3 : day = "wed";
			break;
		
			case 4 : day = "thu";
			break;
		
			case 5 : day = "fri";
			break;
		
			case 6 : day = "sat";
			break;
		
			case 7 : day = "sun";
			break;
			
			default : day = "";
			break;
		}
				
		$(this).children().css({
				"color": "#0d0",
				"border-bottom": "3px solid #0d0"
			
		})
		if(day=="") {
		location.href=`/webtoon`;	
		} else {
			
		location.href=`/webtoon/${day}`;
		}
	})
	
	// 웹툰 리스트 요일 탭 버튼 css
	let listDayVal =  $("#listDayVal").val();
	if (listDayVal != ""){
		$("ul#gnbDay").css({	
			"color": "#aaa",
			"border-bottom": "none"});
		$(`ul#gnbDay>li#${listDayVal}`).css({	
			"color": "#0d0",
			"border-bottom": "4px solid #0d0"});	
	}



	
	/////////////////////// 웹툰 리스트 페이지이동 /////////////////////
//	$("#newWebtoon").click(function() {
//		let title = $(this).find(".hide").val(); 
//		location.href=`/webtoonList?title=${title}`
//	})
//	$("#contentArea>*").click(function() {
//		let title = $(this).find(".hide").val(); 
//		location.href=`/webtoonList?title=${title}`
//	})
//	$("div#mainWebtoon>ul>li>label").click(function() {
//		let title = $(this).find(".hide").val(); 
//		location.href=`/webtoonList?title=${title}`
//	})
	/////////////////////  마이페이지 이동 버튼 ///////////////////
//	$("#mypageGNBul>li.favoriteLi").click(function(){
//		location.href="../myPage/mypageMain";
//	});
//	$("#mypageGNBul>li.recentLi").click(function(){
//		location.href="../myPage/recent";
//	});
//	$("#mypageGNBul>li.bookmarkLi").click(function(){
//		location.href="../myPage/bookmark";
//	});
//	
//	

	$("#LogInOut>button#userLogOut").click(function() {
		location.href="/logout";
	})
	$("#LogInOut>button#userLogIn").click(function() {
		location.href="/login";
	})
	///////////////////// 업로드 테그 버튼 ///////////////////
	$("#uploadTag>span").click(function() {
		// let val = $(this).hasClass();
		// alert("val : " + val)
		$(this).toggleClass("selTag")
		
	})
	
	///////////////////// 웹툰 뷰 페이지 ///////////////////
	
	$("div#webViewLeft div.numStory").click(function(){
		let title= $(this).find(".titleVal").val().trim();
		let num= $(this).find(".numVal").val().trim();
		let epiVal= $(this).find(".epiVal").val().trim();
		location.href=`webtoonView?title=${title}&num=${num}&episode=${epiVal}`;
	});	
		$("button#firstView").click(function(){
		let title= $("#firstViewTitle").val().trim();
		let num= $("#firstViewNum").val().trim();
		let epiVal= $("#firstViewEpisode").val().trim();
		location.href=`webtoonView?title=${title}&num=${num}&episode=${epiVal}`;
	});	
	
	
	$("div#remocon span#back").click(function(){
		history.back();
	});	
	
	$("div#content>div:nth-child(2)").click(function(){
		
		$("div#content>div:nth-child( 2)>span").toggleClass("change");
	});
		
		
		$("div#reviews div#btnArea1>button").click(function(){
			let txt = $("textarea#textArea").val();
			let title = $("span#back").html();
			let epNum = $("span#epNum").html();
			let uid = $("b#uid").html();
			let num = $("#viewNum").val();								
			if(txt.trim() == ""){
			alert("댓글을 입력해주세요");				
			}else{	
							
				$("div#modalWrap").show();
				$("div#star>span:nth-child(1)").click(function(){
					 $("input.star").val("1");
				});
				$("div#star>span:nth-child(2)").click(function(){
					$("input.star").val("5");
				});
				$("div#star>span:nth-child(3)").click(function(){
					$("input.star").val("10");
				});
				$("div#btnArea>button#starBtn").click(function(){
					let e = $("div#star>input").val();
				location.href = `/reviewSave?comment=${txt}&star=${e}&uid=${uid}&epNum=${epNum}&title=${title}&num=${num}`;
				$("h1#star").val();
				});

			}
			
			
			
		});
		
		$("textarea#textArea").keyup(function(){
			let key = $(this).val();
			
			if(key.length == 0 || key == ""){
				$("span#count").text("0");
			}else{
				$("span#count").text(key.length)
			}
		});
		
			///////////////////// 웹툰 회차 순서 //////////////////////
	$("div#thList").click(function(){
		 
		let ep = $(this).next("input#epCnt").val();
		let num = $("#viewNum").val()
		location.href = `/webtoonView?epTitle=${ep}&num=${num}`		
	});
	
	$(function() {
		let before = $("#remBefore").val();
		let next = $("#remNext").val();
		if (before == "") {
			$("#BeforeBtn>a").hide();
		} else {
			$("#BeforeBtn>a").show();
		}
		if (next == "") {
			$("#NextBtn>a").hide();
		} else {
			$("#NextBtn>a").show();
		}
	})
	
	
		//////////////////비로그인 상태 댓글창//////////////////
			$(function(){
			let uid = $("b#uid").html();
			
			if(uid == ""){
				$("div#noLoginTxt").show();
				$("form#review").hide();
			}else if(uid == "admin"){
				$("div#noLoginTxt").hide();
				$("form#review").show();
				$("span#reviewClo").show();
			} else{				
				$("div#noLoginTxt").hide();
				$("form#review").show();
			}		
			
			$("div#noLoginTxt>span").click(function(){
			let chk = confirm("로그인창으로 이동하시겠습니까?");
			if(chk){
				location.href="/login"
			}else{
				
			}
			});
			
			});
			
	//////////////////비로그인 상태 댓글창//////////////////
			
	///////////////////// 관리자 댓글삭제 //////////////////
	const del = $("div.revText>span#reviewClo");
	$(del).click(function () {
		let chk = confirm("해당 댓글을 삭제하시겠습니까?");
		if (chk) {
			let title = $("#back").html();
			let episode = $("#epNum").html();
			let num = $(this).siblings("input#delNum").val();
			
			location.href = `/reviewDle?title=${title}&episode=${episode}&num=${num}`;
		} else {
			alert("취소하셧습니다.");
		}
	});

	///////////////////// 관리자 댓글삭제 //////////////////
	/////////////////////  popup 시작 ///////////////////
		
	$("div#content>div:nth-child(3)").click(function(){		
		 $("div#popup").show();
		
	});
	
	$("div#popup>span#close").click(function(){
		$("div#popup").hide();
	});
	///////////////////// popup 끝 ///////////////////
	
	
	///////////////////// modal 시작 ///////////////////
	
	$("div#modal>span#modalClo").click(function(){
		$("div#modalWrap").hide();
	});
	
	$("div#modal>div#btnArea button:nth-child(2)").click(function(){
		$("div#modalWrap").hide();
	});
		
	
	$("div#star>span:nth-child(1)").click(function(){
		$("span.col").css({"background-color" : "#fff"});
		$(this).css({"background-color" : "#00dc64"});
		$("div#modal>h1").text(1);
	});
	
	$("div#star>span:nth-child(2)").click(function(){
		$("span.col").css({"background-color" : "#fff"});
		$("div#star>span:nth-child(1)").css({"background-color" : "#00dc64"});
		$(this).css({"background-color" : "#00dc64"});
		$("div#modal>h1").text(5);
	});
	
	$("div#star>span:nth-child(3)").click(function(){
		$("span.col").css({
			"background-color" : "#00dc64"
		});		
		$("div#modal>h1").text(10);
		
	});
	
	
	///////////////////// modal 끝 ///////////////////
	
	////////////////////// 로그인 페이지 시작 //////////////////////
// 아이디, 비밀번호 공백 유효성 검사
	$("#loginBtn").click(function() {
		let uid = $("#uid").val().trim();
		let upw = $("#upw").val().trim();

		if (uid == "") {
			$("div#alertMsgID").show();
			$("div#alertMsgPW").hide();
			$("#uid").focus();
		} else if (upw == "") {
			$("div#alertMsgID").hide();
			$("div#alertMsgPW").show();
			$("#upw").focus();
		}
	});

	// 아이디 입력 값 제거 아이콘
	$("#uid").keyup(function() {
		let uidVal = $("#uid").val().trim();
		if (uidVal != "") {
			$("span#uidCloseIcon").show();
		} else {
			$("#uid").val(uidVal);
			$("span#uidCloseIcon").hide();
		};
	});
	$("span#uidCloseIcon").click(function() {
		$("#uid").val("").focus();
		$(this).hide();
	});

	// 비밀번호 입력 값 제거 아이콘
	$("#upw").keyup(function() {
		let upwVal = $("#upw").val().trim();
		if (upwVal != "") {
			$("span#upwCloseIcon").show();
		} else {
			$("#upw").val(upwVal);
			$("span#upwCloseIcon").hide();
		};
	});
	$("span#upwCloseIcon").click(function() {
		$("#upw").val("").focus();
		$(this).hide();
	});

	// 로그인 상태 유지 적용
	let chkLog = 0;
	$("#loginMgrArea>label").click(function() {
		let logStilImg = "";
		if (chkLog++ % 2 == 1) {
			logStilImg = "/img/loginStillOff.png";
			$("img#logStilImg+span").css({ "color": "#888" });
		} else {
			logStilImg = "/img/loginStillOn.png";
			$("img#logStilImg+span").css({ "color": "#000" });
		};

		$("#logStilImg").attr("src", logStilImg);
	});

	// IP보안 토글(Toggle) 기능 적용
	let chk = 0;
	$("#ipSecurity").click(function() {
		let secImg = "";
		if (chk++ % 2 == 1) {
			secImg = "/img/LoginIPOff.png";
		} else {
			secImg = "/img/LoginIPOn.png";
		};

		$("#secImg").attr("src", secImg);
	});
	////////////////////// 로그인 페이지 끝 //////////////////////


	////////////////////// 회원가입 동의 페이지 시작 //////////////////////
	// 전체 선택 정방향 
	$("input#chkAll").click(function() {
		let chkToF = $(this).prop("checked");
		$(".agreeChk").prop("checked", chkToF);
		let reqChk = $(".reqChk1").prop("checked");
		if (chkToF || reqChk) {
			$("button#chkNextGray").hide();
			$("button#chkNextGrn").show();
		} else if (!chkToF && !reqChk) {
			$("button#chkNextGrn").hide();
			$("button#chkNextGray").show();
		}
	});

	// 전체 선택 역방향
	$("input.agreeChk").click(function() {
		let chk0 = $(".agreeChk").eq(0).prop("checked");
		let chk1 = $(".agreeChk").eq(1).prop("checked");
		let chk2 = $(".agreeChk").eq(2).prop("checked");
		let chk3 = $(".agreeChk").eq(3).prop("checked");
		let chk4 = $(".agreeChk").eq(4).prop("checked");
		let chk5 = $(".agreeChk").eq(5).prop("checked");

		if (chk0 && chk1 && chk2 && chk3 && chk4 && chk5) {
			$("#chkAll").prop("checked", true);
			$("button#chkNextGray").hide();
			$("button#chkNextGrn").show();
		} else {
			$("#chkAll").prop("checked", false);
			if (chk0 && chk1) {
				$("button#chkNextGray").hide();
				$("button#chkNextGrn").show();
			} else {
				$("button#chkNextGrn").hide();
				$("button#chkNextGray").show();
			}
		}
	});

	// 개인정보 수집 및 이용 동의 정방향
	$("input#otherChk").click(function() {
		let agrChkToF = $(this).prop("checked");
		$("input#otherSubChk").prop("checked", agrChkToF);
	});

	// 개인정보 수집 및 이용 동의 역방향
	$("input#otherSubChk").click(function() {
		let agrChk = $(this).prop("checked");
		if (agrChk) {
			$("div#notAgrMsg").hide();
			$("#otherChk").prop("checked", true);
		} else {
			$("div#notAgrMsg").show();
		}
	});

	// 회원가입 버튼(다음) 클릭할 때 필수 동의 체크여부 확인
	$("input.reqChk").click(function() {
		let reqChk1 = $("#reqChk1").prop("checked");
		let reqChk2 = $("#reqChk2").prop("checked");
		if (reqChk1 && reqChk2) {
			$("button#chkNextGray").hide();
			$("button#chkNextGrn").show();
		} else {
			$("button#chkNextGrn").hide();
			$("button#chkNextGray").show();
		}
	});

	$("button#chkNextGrn").click(function() {
		location.href = "/user/joinBegin";
	});
	////////////////////// 회원가입 동의 페이지 끝 //////////////////////


	////////////////////// 회원가입 입력 페이지 시작 //////////////////////
	// 아이디 중복 체크 팝업페이지로 이동
	$("#idDupChkBtn").click(function() {
		let fName = "/user/joinIdDupChk";
		let alias = "";
		let scrWidth = screen.width;
		let popWidth = 600;
		let leftPos = (scrWidth - popWidth) / 2;
		let scrHeight = screen.height;
		let popHeight = 450;
		let topPos = (scrHeight - popHeight) / 2;

		let prop = "width=" + popWidth;
		prop += " height=" + popHeight;
		prop += " left=" + leftPos;
		prop += " top=" + topPos;
		window.open(fName, alias, prop);
	});

	// 아이디 중복 체크페이지에서 아이디 유효성 검사
	$("button#dupChkBtn").click(function() {
		let chkID = $("#chkID").val();
		const regExp_chkID = /[^a-z|A-Z|0-9|_-]/g;
		let errMsg = "";

		if (regExp_chkID.test(chkID) || chkID.length < 5 || chkID.length > 20) {
			errMsg = "※ 아이디는 5~20자의 영문 소문자, 숫자와 특수기호(_), (-)만 사용 가능합니다.";
			$("p#chkResMsg").text("");
			alert(errMsg);
		} else {
			$("form#idChkForm").submit();
		}
	});

	// ID 중복체크 팝업창에서 사용할 수 있는 ID 부모페이지에 넣기
	$("#idUseBtn").click(function() {
		let memID = $("#chkID").val();
		let chkUseBtn = $("#idUseBtn").val();
		if (chkUseBtn == "true") {
			$("#memID", opener.document).val(memID);
			window.self.close();
		} else {
			alert("다른 아이디를 사용해주시기 바랍니다.");
		}
	});

	// 유효성 검사 & 테스트
	$("button#goJoinProc").click(function() {
		let memID = $("#memID").val().trim();
		let memPW = $("#memPW").val().trim();
		let uname = $("#uname").val().trim();
		let birth = $("#birth").val().trim();
		let agency = $("#agency").val().trim();
		let phone = $("#phone").val().trim();
		let agrTitle = $("div#agrTitle input[type=checkbox]").prop("checked");

		const regExp_MemPW = /[^a-z|A-Z|0-9|`~!@#$%^&*()-_=+\[]{};:'",.<>?]/g;
		const regExp_Uname = /[^a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;

		// 아이디 공백 검사
		if (memID == "") {
			$("li#idErr").show();
			$("div#joinItemUid").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemUid img").attr("src", "/img/joinIDErr.png");
		} else {
			$("li#idErr").hide();
			$("div#joinItemUid").css({
				"border": "1px solid #bbb",
				"border-bottom": "none"
			});
			$("div#joinItemUid img").attr("src", "/img/joinID.png");
		}

		// 비밀번호 공백 유효성 검사 & 테스트
		if (memPW == "") {
			$("li#pwErr1").show();
			$("li#pwErr2").hide();
			$("div#joinItemUpw").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemUpw img").attr("src", "/img/joinPwErr.png");
		} else if (regExp_MemPW.test(memPW) || memPW.length < 8 || memPW.length > 16) {
			$("li#pwErr2").show();
			$("li#pwErr1").hide();
			$("div#joinItemUpw").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemUpw img").attr("src", "/img/joinPwErr.png");
		} else {
			$("li.pwErr").hide();
			$("div#joinItemUpw").css({
				"border": "1px solid #bbb",
				"border-top": "1px solid #ddd",
				"border-botton": "1px solid #ddd"
			});
			$("div#joinItemUpw img").attr("src", "/img/joinPw.png");
		}

		// 이름 공백 유효성 검사 & 테스트
		if (uname == "") {
			$("li#nameErr1").show();
			$("li#nameErr2").hide();
			$("div#joinItemUname").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemUname img").attr("src", "/img/joinIDErr.png");
		} else if (regExp_Uname.test(uname)) {
			$("li#nameErr2").show();
			$("li#nameErr1").hide();
			$("div#joinItemUname").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemUname img").attr("src", "/img/joinIDErr.png");
		} else {
			$("li.nameErr").hide();
			$("div#joinItemUname").css({
				"border": "1px solid #bbb",
				"border-bottom": "none"
			});
			$("div#joinItemUname img").attr("src", "/img/joinID.png");
		}

		// 생년월일 공백 유효성 검사 & 테스트
		if (birth == "") {
			$("li#birthErr1").show();
			$("li#birthErr2").hide();
			$("div#joinItemBirth").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemBirth img").attr("src", "/img/joinBirthErr.png");
		} else if (isNaN(birth) || birth.length < 8 || birth.length > 8) {
			$("li#birthErr2").show();
			$("li#birthErr1").hide();
			$("div#joinItemBirth").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemBirth img").attr("src", "/img/joinBirthErr.png");
		} else {
			$("li.birthErr").hide();
			$("div#joinItemBirth").css({
				"border": "1px solid #bbb",
				"border-top": "1px solid #ddd",
				"border-botton": "1px solid #ddd"
			});
			$("div#joinItemBirth img").attr("src", "/img/joinBirth.png");
		}

		// 통신사 공백 검사
		if (agency == "") {
			$("li#agencyErr").show();
			$("div#joinItemAgency").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemAgency>img").attr("src", "/img/joinAgencyErr.png");
		} else {
			$("li#agencyErr").hide();
			$("div#joinItemAgency").css({
				"border": "1px solid #bbb",
				"border-top": "none",
				"border-botton": "1px solid #ddd"
			});
			$("div#joinItemAgency>img").attr("src", "/img/joinAgency.png");
		}

		// 휴대전화 공백 유효성 검사 & 테스트
		if (phone == "") {
			$("li#phoneErr1").show();
			$("li#phoneErr2").hide();
			$("div#joinItemPhone").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemPhone img").attr("src", "/img/joinPhoneErr.png");
		} else if (isNaN(phone)) {
			$("li#phoneErr2").show();
			$("li#phoneErr1").hide();
			$("div#joinItemPhone").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemPhone img").attr("src", "/img/joinPhoneErr.png");
		} else {
			$("li.phoneErr").hide();
			$("div#joinItemPhone").css({
				"border": "1px solid #bbb",
				"border-top": "none"
			});
			$("div#joinItemPhone img").attr("src", "/img/joinPhone.png");
		}

		// 필수 동의 공백 검사
		if (!agrTitle) {
			$("div.errArea>p").show();
			$("div#agreeArea").css({
				"border": "2px solid #f00"
			});
		} else {
			$("div.errArea>p").hide();
			$("div#agreeArea").css({
				"border": "1px solid #bbb"
			});
		}

	});

	// 이메일 유효성 테스트
	$("#email").keyup(function() {
		let email = $("#email").val().trim();
		const regExp_Email = /^[0-9|a-z|A-Z]([-_.]?[0-9|a-z|A-Z])*@[0-9|a-z|A-Z](-_.?[0-9|a-z|A-Z])*.[a-z|A-Z]{2,3}/i;
		if (!email.match(regExp_Email)) {
			$("li#emailErr").show();
			$("div#joinItemMail").css({
				"border": "2px solid #f00"
			});
			$("div#joinItemMail img").attr("src", "/img/joinMailErr.png");
		} else {
			$("li#emailErr").hide();
			$("div#joinItemMail").css({
				"border": "1px solid #bbb",
				"border-top": "none"
			});
			$("div#joinItemMail img").attr("src", "/img/joinMail.png");
		}
	});

	// 성별 선택 색상 변경
	$("li.genderLi label").click(function() {
		$("li.genderLi label").removeClass("selected");
		$(this).addClass("selected");
	});

	// 내/외국인 선택 색상 변경
	$("li.regionLi label").click(function() {
		$("li.regionLi label").removeClass("selected");
		$(this).addClass("selected");
	});

	// 통신사 선택목록 확인
	$("ul#telecom").css({ "display": "none" });
	let wideUpDown = 0;
	$("div#joinItemAgency span.wideIcon").click(function() {
		if (wideUpDown++ % 2 == 1) {
			$("ul#telecom").hide();
		} else {
			$("ul#telecom").show();

			// 통신사 선택 후 입력창에 넣기
			$("li.telecomLi span").click(function() {
				let agencyLi = $(this).text();
				$("div#joinItemAgency #agency").val(agencyLi);
				$("ul#telecom").hide();
				$("li#agencyErr").hide();
				$("div#joinItemAgency").css({
					"border": "1px solid #bbb",
					"border-top": "none",
					"border-botton": "1px solid #ddd"
				});
				$("div#joinItemAgency>img").attr("src", "/img/joinAgency.png");
			});
		}
	});

	// 입력페이지의 전체동의 선택목록 확인
	let wideAgrUpDown = 0;
	$("div#agrTitle span.wideIcon").click(function() {
		let wayAgrImg = "";
		if (wideAgrUpDown++ % 2 == 1) {
			wayAgrImg = "/img/joinWideDown.png";
			$("div#listArea").hide();

		} else {
			wayAgrImg = "/img/joinWideUp.png";
			$("div#listArea").show();
		}
		$("#agreeWide").attr("src", wayAgrImg);
	});

	// 입력페이지 전체동의 전체 선택 정방향 
	$("input#chkAgrAll").click(function() {
		let chkToF = $(this).prop("checked");
		$(".agrNdChk").prop("checked", chkToF);
		if (chkToF) {
			$("div.errArea>p").hide();
			$("div#agreeArea").css({
				"border": "1px solid #bbb"
			});
		} else {
			$("div.errArea>p").show();
			$("div#agreeArea").css({
				"border": "2px solid #f00"
			});
		}
	});

	// 전체 선택 역방향
	$("input.agrNdChk").click(function() {
		let chk0 = $(".agrNdChk").eq(0).prop("checked");
		let chk1 = $(".agrNdChk").eq(1).prop("checked");
		let chk2 = $(".agrNdChk").eq(2).prop("checked");
		let chk3 = $(".agrNdChk").eq(3).prop("checked");
		let chk4 = $(".agrNdChk").eq(4).prop("checked");

		if (chk0 && chk1 && chk2 && chk3 && chk4) {
			$("#chkAgrAll").prop("checked", true);
			$("div.errArea>p").hide();
			$("div#agreeArea").css({
				"border": "1px solid #bbb"
			});
		} else {
			$("#chkAgrAll").prop("checked", false);
			$("div.errArea>p").show();
			$("div#agreeArea").css({
				"border": "2px solid #f00"
			});
		}
	});
		////////////////////// 회원가입 성공 페이지 시작 //////////////////////
	$("div#joinSucBtnArea button#goMainBtn").click(function() {
		location.href = "/index";
	});

	$("div#joinSucBtnArea button#goUserLogin").click(function() {
		location.href = "/login";
	});
	////////////////////// 회원가입 성공 페이지 끝 //////////////////////
	
	////////////////////// 회원가입 입력 페이지 끝 //////////////////////
	
	////////////////////// 업로드 //////////////////////

	$("div#btnArea>button").click(function(){
		let title = $("div#uploadWrap input#title").val();
		if(title == ""){
			alert("제목")
		}
	});
	
	
	//팝업창 실행
	$("#uploadWrap #titleChk").click(function(){
		
		let fName = "/uploadPopup";
		let alias = "";
		let scrWidth = screen.width;
		let popWidth = 420;
		let leftPos = (scrWidth - popWidth) / 2;
		let scrHeight = screen.height;
		let popHeight = 340;
		let topPos = (scrHeight - popHeight) / 2;

		let prop = "width=" + popWidth + " height = " + popHeight;;
		prop += " left=" + leftPos + " top=" + topPos;

		window.open(fName, alias, prop);				
				
	});
	
	
	//팝업창에서 제목 중복검사
	$("#btnChk1").click(function(){
		let txt = $("input#chkTitle").val().trim();
		let txtX= "제목은 필수 입력 사항 입니다.";										
			if(txt == ""){			
			$("p#resMsg").text(txtX);
			}else{
				$("form#titleChk").submit();				
			}
	});
	
	//팝업창 입력값 업로드 페이지에 넣기
	$("#btnGo").click(function(){
		
		
		let input = $("input#chkTitle").val().trim();				
		let scriptBtn = $(this).val();
		if(scriptBtn == "true"){
			$("#title",opener.document).val(input);
			window.close();
		}else{
					
		}
		
	});
	
	// 관심웹툰
//	$("#FavBtn").click(function() {
//		let title = $("#favTitle").val();
//		let writer = $("#favWriter").val();
//		let img = $("#favImg").val();
//		location.href=`/favProc?title=${title}&writer=${writer}&img=${img}`;
//	})
	// 웹툰 리스트 관심버튼 
	$(function() {
		let val = $("#FavBtnVal").val()
		console.log("val : " + val)
		if(val == 0){
				$("button#FavBtn").css("display","inline-block");
				$("button#FavBtnRE").css("display","none");
		} else {
				$("button#FavBtnRE").css("display","inline-block");
				$("button#FavBtn").css("display","none");
		}
			
	})
	
	
	////////////////////// 내정보 페이지 시작 //////////////////////
	// 내정보에서 정보 수정 유효성 검사
	$("button#modBtn").click(function() {
		let unameMod = $("input#unameMod").val().trim();
		let emailMod = $("input#emailMod").val().trim();
		let birthMod = $("input#birthMod").val().trim();
		let phoneMod = $("input#phoneMod").val().trim();
		const regExp_UnameMod = /[^a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;
		const regExp_emailMod = /^[0-9|a-z|A-Z]([-_.]?[0-9|a-z|A-Z])*@[0-9|a-z|A-Z](-_.?[0-9|a-z|A-Z])*.[a-z|A-Z]{2,3}/i;
		let errMsg = "";

		if (regExp_UnameMod.test(unameMod) || unameMod == "") {
			// 이름 유효성 검사
			errMsg = "※ 한글, 영문 대/소문자만 사용해 주세요.";
			alert(errMsg);

		} else if (!emailMod.match(regExp_emailMod)) {
			// 이메일 유효성 검사
			errMsg = "※ 이메일 주소가 정확한지 확인해 주세요.";
			alert(errMsg);

		} else if (isNaN(birthMod) || birthMod.length < 8 || birthMod.length > 8 || birthMod == "") {
			// 생일 유효성 검사
			errMsg = "※ 생일을 다시 입력해주시기 바랍니다.";
			alert(errMsg);
			
		} else if (isNaN(phoneMod) || phoneMod == "") {
			errMsg = "※ 휴대전화번호가 정확한지 확인해 주세요.";
			alert(errMsg);
			
		} else {
			$("form#mtdMod").submit();
		}
	});
	
	// 내정보에서 성별 체크
	let myGender = $("#myGender").val();
	if (myGender == "남자") {
		$("label.genderSel input[type=radio]").prop("checked", false);
		$("#man").prop("checked", true);
	} else {
		$("label.genderSel input[type=radio]").prop("checked", false);
		$("#woman").prop("checked", true);
	}

	// 내정보에서 국적 체크
	let myRegion = $("#myRegion").val();
	if (myRegion == "내국인") {
		$("label.regionSel input[type=radio]").prop("checked", false);
		$("input#inRegion").prop("checked", true);
	} else {
		$("label.regionSel input[type=radio]").prop("checked", false);
		$("input#outRegion").prop("checked", true);
	}

	// 내정보에서 통신사 체크
	let myAgency = $("#myAgency").val();
	if (myAgency == "SKT") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgSKT1").prop("selected", true);
	} else if (myAgency == "KT") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgKT1").prop("selected", true);
	} else if (myAgency == "LG U+") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgLG1").prop("selected", true);
	} else if (myAgency == "SKT 알뜰폰") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgSKT2").prop("selected", true);
	} else if (myAgency == "KT 알뜰폰") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgKT2").prop("selected", true);
	} else if (myAgency == "LG U+ 알뜰폰") {
		$("select#agencyMod>option").prop("selected", false);
		$("#myAgLG2").prop("selected", true);
	}
	
	
	// 비밀번호 변경페이지에서 비밀번호 유효성 검사
	$("button#memPWModProcBtn").click(function() {
		let memPWMod = $("#memPWMod").val().trim();
		const regExp_memPWMod = /[^a-z|A-Z|0-9|`~!@#$%^&*()-_=+\[]{};:'",.<>?]/g;
		let errMsg = "";

		if (regExp_memPWMod.test(memPWMod) || memPWMod == "" || memPWMod.length < 8 || memPWMod.length > 16) {
			errMsg = "※ 비밀번호를 다시 입력해주시기 바랍니다.";
			alert(errMsg);
		} else {
			$("form#memPWModForm").submit();
		}
	});

	// 회원탈퇴로 이동
	$("button#delBtn").click(function() {
		let msg = "회원탈퇴를 진행하시겠습니까?";
		let chk = confirm(msg);

		if (chk) {
			$("form#mtdDel").submit();
		} else {
			alert("사용자가 취소하셨습니다.");
		}
	
	////////////////////// 내정보 페이지 끝 //////////////////////
});

	// noticeclick
	$(".noticeTitleName").click(function(){
		let seq = $(this).find(".titleVal").val();
		location.href=`/noticeclick?seq=${seq}`
	})
	$("button.plz").click(function(){
		let seq = $(".titleVal").val();
		location.href=`noticeclick?${seq}`;
	})
	// noticeclick 완료
	// 페이지네이션 시작
	$(document).ready(function() {
            const labels = $('.notii .label');
            if (labels.length >= 2) {
                labels.eq(0).text("이전");
                labels.eq(1).text("현재");
                labels.eq(2).text("다음");
            }
        });
	
		
		
});
