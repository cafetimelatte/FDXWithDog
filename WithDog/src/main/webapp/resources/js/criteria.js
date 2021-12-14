		var page = 1;
		var order = "recent";
		var field = "";
		var category = "h_name";
		var startNum;
		var lastNum;
		$(window).on('load',function(){
			$("#executeAjax").click(function(){
				if(document.URL.indexOf("hotelList")!=-1){
					var f = document.querySelector("#h_field")
					if(f.value != null){
						field = f.value;
					}
				}
				console.log("page : " + page);
				console.log("order : " + order);
				console.log("field : " + field);
				console.log("category : " + category);
				$.ajax({
					type: 'POST',
					url: 'hotelList',
					headers:{
						'Accept' : 'application/json',
						'Content-Type' : 'application/json'
					},
					data: JSON.stringify({'page':page, 'field':field, 'category':category, 'order':order}),
					success: function(maps){
						console.log(maps);
						setHotelList(maps.h_list);
						setPagination(maps.h_crit);
					}, error: function(error){
						console.log(error);
					}
				})
			})
			$("#executeAjax").click();
		})
	
		$(document).on('click','#search',function(){
			if($("#field").val() == null || $("#field").val() == ""){
				field = "";
			} else{
				field = $("#field").val();
			}
			if($("#category").val() == null || $("#category").val() == ""){
				category = "h_name";
			} else{
	    		category = $("#category").val();
			}
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
		
		function setPagination(h_crit){
			var pages = ""
			startNum = h_crit.startNum;
			lastNum = h_crit.lastNum;
			if(h_crit.prev){
				pages += "<a class='PageNavStart'>«</a>";
				pages += "<a class='PageNavPrev'>←</a>";
			}
			for(var i = 0; i < 5; i++){
				if((startNum + i) <= lastNum){
					pages += "<a class=" + (h_crit.page == (startNum + i)?"active":"") + ">" + (startNum + i) + "</a>";
				}
			}
			if(h_crit.next){
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