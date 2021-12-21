function checkHotelInfo(event){
	var f = document.hotelInfo;
	var phoneChk = /^\d{9,11}$/;
	var priceChk = /^[0-9]/g;
	if(!f.h_name.value){
		alert("숙소명을 입력해주세요.");
		f.h_name.focus();
		return;	
	}
	if(document.URL.indexOf("applyHotel")==-1){
		if(!f.h_info.value){
			alert("소개글을 입력해주세요.");
			f.h_info.focus();
			return;	
		}
	}
	if(!f.h_add1.value){
		alert("주소를 입력해주세요.");
		f.h_add1.focus();
		return;	
	}
	if(!f.h_add2.value){
		alert("주소를 입력해주세요.");
		f.h_add2.focus();
		return;	
	}
	if(!f.h_add3.value){
		alert("주소를 입력해주세요.");
		f.h_add3.focus();
		return;	
	}
	if(!f.h_phone.value){
		alert("연락처를 입력해주세요.");
		f.h_phone.focus();
		return;
	}
	if(!f.h_web.value){
		alert("홈페이지를 입력해주세요.");
		f.h_web.focus();
		return;	
	}
	if(document.URL.indexOf("applyHotel")==-1){
		if(!f.h_chkInTime.value && document.URL.indexOf("applyHotel")==-1){
			alert("영업시간을 입력해주세요.");
			f.h_chkInTime.focus();
			return;	
		}
		if(!f.h_chkOutTime.value && document.URL.indexOf("applyHotel")==-1){
			alert("영업시간을 입력해주세요.");
			f.h_chkOutTime.focus();
			return;	
		}
		if(!f.h_petSize.value && document.URL.indexOf("applyHotel")==-1){
			alert("크기를 입력해주세요.");
			f.h_petSize.focus();
			return;	
		}
		if(!f.h_petWeight.value && document.URL.indexOf("applyHotel")==-1){
			alert("몸무게를 입력해주세요.");
			f.h_petWeight.focus();
			return;	
		}
		if(!f.h_price.value && document.URL.indexOf("applyHotel")==-1){
			alert("가격을 입력해주세요.");
			f.h_price.focus();
			return;	
		}
		if(document.URL.indexOf("addHotelM")!=-1){
			if(!f.filesI.value){
				alert("숙소 이미지를 등록해주세요.");
				return;
			}
			if(!f.filesD.value){
				alert("상세페이지를 등록해주세요.");
				return;
			}
		} else{
			var chkCntI = f.filesI.closest(".imgContainer").querySelector(".uploadedImgs").childElementCount;
			var chkCntD = f.filesD.closest(".imgContainer").querySelector(".uploadedImgs").childElementCount;
			if(chkCntI == 0 && !f.filesI.value){
				alert("숙소 이미지를 등록해주세요.");
				return;
			} else if(chkCntD == 0 && !f.filesD.value){
				alert("상세페이지를 등록해주세요.");
				return;
			}
		}
		if(!priceChk.test(f.h_price.value) && document.URL.indexOf("applyHotel")==-1){
			alert("가격에 숫자만 입력해주세요.");
			return;
		}
	}
	if(!phoneChk.test(f.h_phone.value)){
		alert("전화번호 '-' 제외하거나 다시 확인해주세요.");
		return;
	}
	
	if(!validate(event)){
		return;
	}
	
	f.submit();
};

function checkBookingInfo(event){
	var b = document.bookingInfo;
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var dateString = year + '-' + month  + '-' + day;
	
	if(!b.b_chkInDate.value){
		alert("입실날짜를 입력해주세요.");
		return;
	}
	if(!b.b_chkOutDate.value){
		alert("퇴실날짜를 입력해주세요.");
		return;
	}
	
	if(b.b_chkInDate.value < dateString){
		alert("입실날짜는 오늘 날짜와 같거나 나중이어야 합니다.");
		return;
	}
	
	if(b.b_chkInDate.value >= b.b_chkOutDate.value){
		alert("입실날짜는 퇴실날짜와 같거나 더 나중이면 안됩니다.");
		return;
	}
	
	if(!validate(event)){
		return;
	}
	
	b.submit();
}

function checkBoardInfo(event){
	var w = document.writeReview;
	
	if(!w.mb_title.value){
		alert("제목을 입력해주세요.");
		w.mb_title.focus();
		return;
	}
	if(!w.h_id.value || w.h_id.value == ''){
		alert("숙박하신 숙소를 선택해주세요.");
		w.h_id.focus();
		return;
	}
	if(!w.mb_content.value || w.mb_content.value.trim() == ''){
		alert("내용을 입력해주세요.");
		w.mb_content.focus();
		return;
	}
	if(!w.mb_img.value){
		alert("이미지를 선택해주세요.");
		return;
	}
	w.submit();
}

function checkCsInfo(event){
	var c = document.CslistPage;
	
	if(!c.cs_title.value){
		alert("제목을 입력해주세요.");
		c.cs_title.focus();
		return;
	}
	if(!c.cs_content.value || c.cs_content.value.trim() == ''){
		alert("내용을 입력해주세요.");
		c.cs_content.focus();
		return;
	}
	c.submit();
}

function checkReplyInfo(event){
	var r = document.comment;
	if(!r.mbre_content.value || r.mbre_content.value.trim() == ''){
		alert("내용을 입력해주세요.");
		r.mbre_content.focus();
		return false;
	}
}

function checkUpdateInfo(event){
	var u = document.update;
	if(!u.mb_title.value){
		alert("제목을 입력해주세요.");
		u.mb_title.focus();
		return;
	}
	if(!u.mb_content.value || u.mb_content.value.trim() == ''){
		alert("내용을 입력해주세요.");
		u.mb_content.focus();
		return;
	}
	u.submit();
}

function checkSearch(event){
	var s = document.search;
	var capitalChk = /[A-Z]/;
	
	if(!s.field.value){
		alert("검색어를 입력해주세요.");
		return false;
	}
	if(s.category.value == 'b_id' && !capitalChk.test(s.field.value)){
		alert("예약번호는 영문 대문자로 입력해주세요.");
		return false;
	}
	return true;
}

function checkReviewSearch(event){
	var rs = document.search;
	var numChk = /^[0-9]/g;
	
	if(!rs.f.value){
		alert("검색어를 입력해주세요.");
		rs.f.focus();
		return;
	}
	if(rs.c.value == 'mb_id' && !numChk.test(rs.f.value)){
		alert("게시글번호는 숫자로 입력해주세요.");
		return;
	}
	rs.submit();
}

function validate(event){
	if(event.name == "addBtn"){
		return confirm("등록 하시겠습니까?");
	} else if(event.name == "upBtn"){
		return confirm("업로드 하시겠습니까?");
	} else if(event.name == "delBtn"){
		return confirm("삭제 하시겠습니까?");
	} else if(event.name == "modBtn"){
		return confirm("수정 하시겠습니까?");
	} else if(event.name == "bookBtn"){
		return confirm("예약 하시겠습니까?");
	} else if(event.name == "payBtn"){
		return confirm("결제 하시겠습니까?");
	} else if(event.name == "applyBtn"){
		return confirm("신청 하시겠습니까?");
	} else if(event.name == "approveBtn"){
		return confirm("접수 하시겠습니까?");
	} else if(event.name == "returnBtn"){
		return confirm("반려 하시겠습니까?");
	}
};

function loginCheck(loginRs, url){
	if(loginRs == 0){
		alert("로그인이 필요합니다");
		return false;
	}
	location.href=url;
}
