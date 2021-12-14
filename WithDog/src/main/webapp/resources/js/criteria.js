var url = 'hotelListM';
var page = 1;
var order = "recent";
var field = "";
var category = "h_name";
var startNum;
var lastNum;
if(document.URL.indexOf("bookingListM")!=-1){
	url = 'bookingListM';
	category = 'b_id';
}

$(window).on('load',function(){
	$("#executeAjax").click(function(){
		if(document.URL.indexOf("bookingListM")==-1 && document.URL.indexOf("hotelListM")==-1){
			url = 'hotelList';
			field = document.querySelector('#h_field').value;
		}
		console.log("url : " + url);
		console.log("page : " + page);
		console.log("order : " + order);
		console.log("field : " + field);
		console.log("category : " + category);
		$.ajax({
			type: 'POST',
			url: url,
			headers:{
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			data: JSON.stringify({'page':page, 'field':field, 'category':category, 'order':order}),
			success: function(map){
				console.log(map);
				url == 'bookingListM'?setBookingList(map.b_info):setHotelList(map.h_list);
				setPagination(map.crit);
			}, error: function(error){
				console.log(error);
			}
		})
	})
	$("#executeAjax").click();
})
$(document).on('click','#search',function(){
	if(document.URL.indexOf("bookingListM")!=-1){
		if(!checkSearch(this)){
			return;
		}
	}
	field = $("#field").val();
   	category = $("#category").val();
	page = 1;
	$("#executeAjax").click();
})

function setHotelList(h_list){
	var list = "";
	for(var i = 0; i < h_list.length; i++){
		var cnt = i+1;
		var imgs = h_list[i].h_img.split(",");
		list += "<a href='updateHotelM?h_id=" + h_list[i].h_id + "'>";
		if(cnt % 3 == 0){
			list += "<div class='s21_tour_list_conts mgr_0 pr'>";
		} else{
			list += "<div class='s21_tour_list_conts pr'>";
		}
		list += "<span class='s21_reser_ok_btn pa'><img src='http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/icon_New2.png'></span><dl class='s21_tour_list_photo'>";
		for(var j = 0; j < imgs.length; j++){
			if(j == 0){
				list += "<dt><img src='hotel/"+ h_list[i].h_id +"/h_img/" + imgs[j] + "' alt='" + h_list[i].h_name + "'></dt>";
			} else if(j == 3){
				break;
			}	else{
				list += "<dd><img src='hotel/"+ h_list[i].h_id +"/h_img/" + imgs[j] + "' alt='" + h_list[i].h_name + "'></dd>";
			}
		}
		list += "</dl><div class='s21_tour_list_tbox'>";
		list += "<h4 class='s21_tour_accommodation'>" + h_list[i].h_name + "</h4>";
		list += "<p class='s21_tour_list_text'>"+h_list[i].h_info+"</p>";
		list += "<div class='s21_desc' onclick=''><div class='s21_d_comment'><p class='icon_comment'>댓글</p>0</div></div></div></div></a>";
	}
	$(".s21_tour_list_box").empty();
	$(".s21_tour_list_box").append(list);
}

function setBookingList(b_info){
	var info = "<li><dl>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>예약번호</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>회원이메일</dt>";
	info += "<dt style='text-align:center;width:13%;padding:0 3px 0 3px'>숙소명</dt>";
	info += "<dt style='text-align:center;width:6%;padding:0 3px 0 3px'>숙박인원</dt>";
	info += "<dt style='text-align:center;width:6%;padding:0 3px 0 3px'>반려동물</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>입실날짜</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>퇴실날짜</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>숙박일수</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>숙박비</dt>";
	info += "<dt style='text-align:center;width:6%;padding:0 3px 0 3px'>예약상태</dt>";
	info += "<dt style='text-align:center;width:8%;padding:0 3px 0 3px'>예약일</dt>";
	info += "<dt style='text-align:center;width:6%;padding:0 3px 0 3px'>비고</dt>";
	info += "</dl></li>";
	
	for(var i = 0; i < b_info.length; i++){
		info += "<li class='reserved'><dl>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.b_id + "</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.m_id + "</dd>";
		info += "<dd style='text-align:center;width:13%;padding:0 3px 0 3px'>" + b_info.b_name + "</dd>";
		info += "<dd style='text-align:center;width:6%;padding:0 3px 0 3px'>" + b_info.b_humanNum + "</dd>";
		info += "<dd style='text-align:center;width:6%;padding:0 3px 0 3px'>" + b_info.b_petNum + "</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.b_chkInDate + "</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.b_chkOutDate + "</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>";
		info += "<fmt:parseNumber value='${b_info.b_chkInDate.time / (1000*60*60*24)}' integerOnly='true' var='inDate'></fmt:parseNumber>";
		info += "<fmt:parseNumber value='${b_info.b_chkOutDate.time / (1000*60*60*24)}' integerOnly='true' var='outDate'></fmt:parseNumber>";
		info += "${outDate - inDate}</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.b_price * (outDate - inDate) + "원</dd>";
		info += "<dd style='text-align:center;width:6%;padding:0 3px 0 3px'>" + b_info.b_state + "</dd>";
		info += "<dd style='text-align:center;width:8%;padding:0 3px 0 3px'>" + b_info.b_regiDate + "</dd>";
		info += "<dd style='text-align:center;width:6%;padding:0 3px 0 3px'><a href='updateBookingM?b_id=" + b_info.b_id + "&h_id=" + b_info.h_id + "'>수정</a> | <a name='delBtn' onclick='if(validate(this)){location.href='deleteBookingM?b_id=" + b_info.b_id + "'}'>삭제</a></dd>";
		info += "</dl></li>";
	}
	$(".s21_detail_twrap_mod").empty();
	$(".s21_detail_twrap_mod").append(info);
}


function setPagination(crit){
	var pages = ""
	startNum = crit.startNum;
	lastNum = crit.lastNum;
	if(crit.prev){
		pages += "<a class='PageNavStart'>«</a>";
		pages += "<a class='PageNavPrev'>←</a>";
	}
	for(var i = 0; i < 5; i++){
		if((startNum + i) <= lastNum){
			pages += "<a class=" + (crit.page == (startNum + i)?"active":"") + ">" + (startNum + i) + "</a>";
		}
	}
	if(crit.next){
		pages += "<a class='PageNavNext'>→</a>";
		pages += "<a class='PageNavEnd'>»</a>";
	}
	$("#PageNav").empty();
	$("#PageNav").append(pages);
}

function listOrder(list){
	order = list;
	page = 1;
	$(".s21_sun_checked").removeClass("s21_sun_checked");
	$("#"+list).addClass("s21_sun_checked");
	$("#executeAjax").click();
}

$(document).on('click','#PageNav > a',function(){
   	if(this.className == 'PageNavStart'){
   		page = 1;
   	} else if(this.className == 'PageNavPrev'){
   		page = startNum - 5;
   	} else if(this.className == 'PageNavNext'){
   		page = startNum + 5;
   	} else if(this.className == 'PageNavEnd'){
   		page = lastNum;
   	} else{
    	page = parseInt(this.text);
   	}
   	$("#executeAjax").click();
});