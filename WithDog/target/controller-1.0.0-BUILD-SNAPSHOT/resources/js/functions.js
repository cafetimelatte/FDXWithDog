/********************************************
자주 쓰는 Function
-161130 14:00 이진혁 -
*********************************************/


//로컬저장소 사용 함수
var Store = {
	set : function(key,val){
		localStorage[key] = val;
	},
	get : function(key){
		if(typeof localStorage[key] != 'undefined'){
			return localStorage[key];
		}else{
			return false;
		}
	},
	//배열을 json문자열로
	setJson : function(key,val){
		localStorage[key] = JSON.stringify(val);
	},
	//json문자열을 json으로
	getJson : function(key){
		if(typeof localStorage[key] != 'undefined'){
			return JSON.parse(localStorage[key]);
		}else{
			return false;
		}
	},
	del : function(key){
		localStorage.removeItem(key);
	},
	clear : function(){
		localStorage.clear();
	}
};


/*팝업 띄우기*/
function showPopup(background, popup){
	$(background).css("display","fixed");
	$(background).fadeIn();

	if(popup){
		$(popup).css("display","block");
		$(popup).fadeIn();
		$(popup).animate({
			top : "0"
		}, 500, function(){
		});
	}
}

/*팝업 숨기기*/
function hidePopup(background, popup){
	$(background).fadeOut();
	if(popup){
		$(popup).animate({
			top : "100%"
		}, 500, function(){
		});
		$(popup).fadeOut();
	}
}



/*천단위 콤마*/
function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


/*
	맨 위로 버튼을 설정합니다.
	(스크롤 최상단일 때 숨김, 최상단아닐때 노출)
	(클릭했을때 최상단으로 이동)
*/
function initScrollTop(scroll_top_id){
	if($(window).scrollTop() == 0){
		$("#"+scroll_top_id).css("visibility","hidden");
	}else{
		$("#"+scroll_top_id).css("visibility","visible");
	}

	$(window).scroll(function(){
		if($(window).scrollTop() == 0){
			$("#"+scroll_top_id).css("visibility","hidden");
		}else{
			$("#"+scroll_top_id).css("visibility","visible");
		}
	});

	$("#"+scroll_top_id).click(function(){
		$(window).scrollTop(0)
	});
}

/*코인 추가 적립*/
function showExtraCoin(){
	alert("준비 중입니다.");
}

//ajax 재실행 방지를 위한 변수
var is_progress_ajax_running = {"default" : false}
/***********************************
애드박스 전용! ajax를 실행합니다.
***********************************/
function ajaxForApp(ajax_data){
	//ajax 처리 url
	var url = ajax_data.url;
	//데이터
	var data = ajax_data.data;
	//완료 콜백
	var success = ajax_data.success;
	//에러 콜백
	var error = ajax_data.error;
	//로딩 중 메시지(없을 경우 로딩창표시안함)
	var msg = ajax_data.msg;
	//중복 실행 허용 여부
	var overlap = ajax_data.overlap;
	//Ajax 고유 key (중복 실행 체크용)
	var key = ajax_data.key;
	

	if(!url){
		console.error("ajaxWithProgress({url:[ajax 처리 URL]})을 지정해주세요.");
		return false;
	}

	if(!data){
		console.error("ajaxWithProgress({data:[ajax 전송 data]})를 지정해주세요.");
		return false;
	}

	if(!key) key = "default";


	//ajax 중복 실행 방지
	if(is_progress_ajax_running[key] && !overlap) return false;

	try{
		//앱에서 로딩 팝업을 띄우는 함수
		if(msg) window.android.showProgress(msg);
	}catch(e){
	}
	if(!overlap) is_progress_ajax_running[key] = true;

	$.ajax({
		async: true,
		url: url,
		type: "POST",
		dataType: 'json',
		data: data,
		timeout:15000,
		success: function(data){
			//window.android.dismissAll(); 을 즉시 실행하면 간헐적으로 로딩 팝업이 종료가 되지않아서 300ms동안 대기 후 실행
			setTimeout(function(){
				try{
					//앱의 모든 팝업을 종료하는 함수
					if(msg) window.android.dismissAll();
				}catch(e){
				}

				setTimeout(function(){
					if(!overlap) is_progress_ajax_running[key] = false;
					if(success) success(data);
				}, 300);

				
			}, 300);
		},
		error: function(request,status,e){
			//window.android.dismissAll(); 을 즉시 실행하면 간헐적으로 로딩 팝업이 종료가 되지않아서 300ms동안 대기 후 실행
			setTimeout(function(){
				try{
					//앱의 모든 팝업을 종료하는 함수
					if(msg) window.android.dismissAll();
				}catch(e){
				}

				setTimeout(function(){
					if(!overlap) is_progress_ajax_running[key] = false;
					if(error) error(request, status, e)
				}, 300);
				
			}, 300);
		}
	});//end ajax
}


/*해당 id의 input 태그를 숫자만 입력되게 합니다.*/
function allowOnlyNumber(id){
	
	//일반용
	$("#"+id).keydown(function(event){
		var keyCode = event.which?event.which:event.keyCode;
		if((keyCode >= 48 && keyCode <= 57) || (keyCode >= 96 && keyCode <= 105) || (keyCode >= 35 && keyCode <= 40) || keyCode == 9 || keyCode == 8 || keyCode == 46 || keyCode == 229){
			//allow
		}else{
			event.preventDefault();
		}
	});

	//input = "tel" 용
	$("#"+id).keyup(function(){
		var regex = /^[0-9]$/;
		var str = $(this).val();
		var subStr = str.substr(str.length - 1);
		if(!regex.test(subStr)) {
			if(str.length >0){
				$(this).val(str.substr(0, (str.length - 1)));
			}else{ 
				$(this).val();
			}
		}
	});
}





/*유튜브 링크를 유튜브 코드로 변경*/
function getYoutubeCode(link){
	if(link.indexOf(".youtube.com/watch") == -1 && link.indexOf("youtu.be/") == -1){
		return "";
	}
	
	var youtube_code = "";
	if(link.indexOf(".youtube.com/watch") !== -1){
		youtube_code = link.substring(link.indexOf("v=") + 2,link.length);
	}else{
		youtube_code = link.substring(link.indexOf("be/") + 3,link.length);
	}

	youtube_code = replaceAll(youtube_code, "&", "");
	youtube_code = replaceAll(youtube_code, "/", "");
	
	return youtube_code;	
}




var observe;
if (window.attachEvent) {
    observe = function (element, event, handler) {
        element.attachEvent('on'+event, handler);
    };
}
else {
    observe = function (element, event, handler) {
        element.addEventListener(event, handler, false);
    };
}

/*height가 자동으로 설정되는 TextArea로 적용하기*/
function initAutoHeightTextArea(text_area){
//	var saved_height = parseInt($(text_area).height());
	var saved_height = text_area.scrollHeight;
	 function resize() {
		if(text_area.scrollHeight <= saved_height) return false;
        text_area.style.height = 'auto';
        text_area.style.height = text_area.scrollHeight+'px';
    }
    /* 0-timeout to get the already changed text_area */
    function delayedResize () {
        window.setTimeout(resize, 0);
    }
    observe(text_area, 'change',  resize);
    observe(text_area, 'cut',     delayedResize);
    observe(text_area, 'paste',   delayedResize);
    observe(text_area, 'drop',    delayedResize);
    observe(text_area, 'keydown', delayedResize);
	
	resize();
}


/*가로의 ?% -> ?px */
/*두번째 인자가 없을 경우 화면 가로 길이의 %*/
function vwToPx(vw, width){
	if(!width) width = document.documentElement.clientWidth;
     return vw/100*width;
}

/*세로의 ?% -> ?px */
/*두번째 인자가 없을 경우 화면 세로 길이의 %*/
function vhToPx(vh, height){
	if(!height) height = document.documentElement.clientHeight;
     return vh/100*height;
}

/*Replace All*/
function replaceAll(str, searchStr, replaceStr) {
    return str.split(searchStr).join(replaceStr);
}

/***
이벤트가 실행되면 안되는 곳에 추가
ex. tr에 onClick 이벤트 걸려있지만 특정 td에 onClick을 따로 줘야될 경우 td의 onClick에 cancelBubbling(); 호출 한 다음에 실행함 함수 작성
***/
function cancelBubbling(){
     var event = window.event;
     event.stopPropagation();
     event.cancelBubble = true;
}


/* android toast 처리*/
function toast(msg){
	try{window.android.toast(msg);}catch(e){alert(msg);};
}

/* android dismissAll 처리*/
function dismissAll(){
	try{window.android.dismissAll();}catch(a){}
}

/* android showProgressDialog 처리*/
function showProgressDialog(msg){
	try{window.android.showProgressDialog(msg);}catch(a){}
}

/* android dismissProgress 처리*/
function dismissProgress(msg){
	try{window.android.dismissProgress();}catch(a){}
}

function noimage(obj) {
	obj.src = "http://appdata.hungryapp.co.kr/images/hatdog/img/common/noimg.png/hungryapp/resize/300x300";
}

function mktime() {  
	var no, ma = 0, mb = 0, i = 0, d = new Date(), argv = arguments, argc = argv.length;  
  
	if (argc > 0){  d.setHours(0,0,0); d.setDate(1); d.setMonth(1); d.setYear(1972);  }  
   
	var dateManip = {  
		0: function(tt){ return d.setHours(tt); },  
		1: function(tt){ return d.setMinutes(tt); },  
		2: function(tt){ var set = d.setSeconds(tt); mb = d.getDate() - 1; return set; },  
		3: function(tt){ var set = d.setMonth(parseInt(tt)-1); ma = d.getFullYear() - 1972; return set; },  
		4: function(tt){ return d.setDate(tt+mb); },  
		5: function(tt){ return d.setYear(tt+ma); }  
	};  
	  
	for( i = 0; i < argc; i++ ){  
		no = parseInt(argv[i]*1);  
		if (isNaN(no)) {  
			return false;  
		} else {  
			// arg is number, let's manipulate date object  
			if(!dateManip[i](no)){  
				// failed  
				return false;  
			}  
		}  
	}  
  
	return Math.floor(d.getTime()/1000);  
}  

//핸드폰
function autoHypenPhone(str){
	str = str.replace(/[^0-9]/g, '');
	var tmp = '';
	if(str.substr(0, 2)=="02"){
		if( str.length < 3){
			return str;
		}else if(str.length < 6){
			tmp += str.substr(0, 2);
			tmp += '-';
			tmp += str.substr(2);
			return tmp;
		}else if(str.length < 10){
			tmp += str.substr(0, 2);
			tmp += '-';
			tmp += str.substr(2, 3);
			tmp += '-';
			tmp += str.substr(5);
			return tmp;
		}else{              
			tmp += str.substr(0, 2);
			tmp += '-';
			tmp += str.substr(2, 4);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		}
	}else{
		if( str.length < 4){
			return str;
		}else if(str.length < 7){
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3);
			return tmp;
		}else if(str.length < 11){
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 3);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		}else{              
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
	}
	return str;
}

//생일(1985.06.30)
function autoBirth(str){
	str = str.replace(/[^0-9]/g, '');
	var tmp = '';
	if( str.length < 5){
		return str;
	}else if(str.length < 6){
		tmp += str.substr(0, 4);
		tmp += '.';
		tmp += str.substr(4);
		return tmp;
	}else if(str.length < 8){
		tmp += str.substr(0, 4);
		tmp += '.';
		tmp += str.substr(4, 2);
		//tmp += '.';
		tmp += str.substr(6);
		return tmp;
	}else{              
		tmp += str.substr(0, 4);
		tmp += '.';
		tmp += str.substr(4, 2);
		tmp += '.';
		tmp += str.substr(6);
		return tmp;
	}
	return str;
}


function ios_error() { 
	alert("ios 권한 문제로 이미지 첨부가 불가능합니다.\n이용에 불편을 드려 죄송합니다.\n빠른시일에 개선하겠습니다.");
	return;
}
function ios_div_error() { 
	$(".ios_div_error_str").show();
	var ios_div_error_str;
	ios_div_error_str='<p class="w_img"><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/warning_img7.png" alt=""></p>'
					+'<p class="w_text">이미지 첨부시 꺼짐현상이 있는 경우 1.20 버젼으로 다시 설치해주세요.<br></br>'
					+'</p>'
	$(".ios_div_error_str").html(ios_div_error_str);
}