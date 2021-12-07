function checkHotelInfo(){
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
	if(f.filesI && f.filesD){
		if(!f.filesI.value){
			alert("숙소 이미지를 등록해주세요.");
			return;
		}
		if(!f.filesD.value){
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
		
	f.submit();
};

function uploadChk(event){
	
	var files = document.getElementsByClassName("uploadedImg");
		

};

function deleteChk(event){
	var cnt = event.closest(".uploadedImg").parentElement.childElementCount;
	
	if(cnt == 3){
		alert("이미지는 최소 1개 등록되어야합니다.");
		return false;
	}
	return true;
};

