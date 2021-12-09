function checkHotelInfo(event){
	var f = document.hotelInfo;
	var phoneChk = /^\d{9,11}$/;
	var priceChk = /^[0-9]/g;
	if(!f.h_name.value){
		alert("숙소명을 입력해주세요.");
		f.h_name.focus();
		return;	
	}
	if(!f.h_info.value){
		alert("소개글을 입력해주세요.");
		f.h_info.focus();
		return;	
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
	if(!f.h_chkInTime.value){
		alert("영업시간을 입력해주세요.");
		f.h_chkInTime.focus();
		return;	
	}
	if(!f.h_chkOutTime.value){
		alert("영업시간을 입력해주세요.");
		f.h_chkOutTime.focus();
		return;	
	}
	if(!f.h_petSize.value){
		alert("크기를 입력해주세요.");
		f.h_petSize.focus();
		return;	
	}
	if(!f.h_petWeight.value){
		alert("몸무게를 입력해주세요.");
		f.h_petWeight.focus();
		return;	
	}
	if(!f.h_price.value){
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
	if(!phoneChk.test(f.h_phone.value)){
		alert("전화번호 '-' 제외하거나 다시 확인해주세요.");
		return;
	}
	if(!priceChk.test(f.h_price.value)){
		alert("가격에 숫자만 입력해주세요.");
		return;
	}
	
	if(!validate(event)){
		return;
	}
	
	f.submit();
};

function checkBookingInfo(event){
	var b = document.bookingInfo;
	if(!b.b_chkInDate.value){
		alert("입실날짜를 입력해주세요.");
		return;
		return;
	}
	if(!b.b_chkOutDate.value){
		alert("퇴실날짜를 입력해주세요.");
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

function checkSearch(event){
	var s = document.search;
	
	if(!s.field.value){
		alert("검색어를 입력해주세요.");
		return;
	}
	
	s.submit();
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
	}
};


