<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog-HotelDetail</title>

    <link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="css/sub_j.css">
    <link rel="stylesheet" href="css/sub_h.css">
    <link rel="stylesheet" href="css/sub.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/shot.css">
    <link rel="stylesheet" href="css/swiper-bundle.min.css">

    <script src="js/jquery.js"></script>
    <script src="js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/functions.js?ver=3"></script>
	<script type="text/javascript" src="js/jquery.fileupload.js"></script>
	<script type="text/javascript" src="js/jquery.paging.js"></script>
	<script src="js/verification.js"></script>
	
    <title>Document</title>
</head>

<body>
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
    <!-- container -->
    <div id="Container">
        <div class="sContainer">
            <!-- sub m top -->
            <div class="s21_tour_de_top">
                <h3 class="area" style="height:60px">${h_detail.h_name} <span>${h_detail.h_info}</span>
                </h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_img swiper-container ">
                        <div class="swiper-wrapper">
                        	<c:forTokens var="h_i" items="${h_detail.h_img}" delims=",">
                            	<p class="swiper-slide"><img src="hotel/${h_detail.h_id}/h_img/${h_i}" alt="?????????"></p>
                            </c:forTokens>
                        </div>
                    </div>
                    	
                    <!-- ?????? ?????? ?????? -->
                    <div class="s21_today_arrow pa" style="z-index:9">
                        <button type="button" class="button_stop" onclick="$(this).hide();$('.button_start').show();swiper_main.autoplay.stop();">??????</button>
                        <button type="button" class="button_start" onclick="$(this).hide();$('.button_stop').show();swiper_main.autoplay.start();">??????</button>
                        <p class="swiper-pagination4"><span class="f_orange">1</span><span class="op30">/</span><span>8</span></p>
                        <div><button type="button" class="button_prev">??????</button><button type="button" class="button_next">??????</button></div>
                    </div>
                    <!--// ?????? ?????? ?????? -->

                    <div class="s21_detail_tbox">
                        <!-- ?????? ?????? s -->
                        <ul class="s21_detail_twrap">
                            <li>
                                <dl>
                                    <dt>??????</dt>
                                    <dd>${h_detail.h_add1} ${h_detail.h_add2} ${h_detail.h_add3} </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>?????????</dt>
                                    <dd>${h_detail.h_phone}</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>????????????</dt>
                                    <dd><a href="https://${h_detail.h_web}" target="_blank">${h_detail.h_web}</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>????????????</dt>
                                    <dd title="">${h_detail.h_chkInTime} ~ ${h_detail.h_chkOutTime}</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>??????</dt>
                                    <dd>${h_detail.h_etc}</dd>
                                </dl>
                            </li>
                        </ul>
                        <!-- //?????? ?????? e -->
                        <!-- ?????? ?????? s -->
                        <div class="s21_detail_top_btm">
                            <dl class="mgl_0">
                                <dt>
                                    <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_accommodation_line.png?ver=2" /></dt>
                                <dd>??????</dd>
                            </dl>
                            <dl>
                                <dt>
                                    <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_dog_line.png?ver=2" /></dt>
                                <dd>${h_detail.h_petSize}</dd>
                            </dl>
                            <dl>
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_scale_line.png?ver=2" alt="??????" /></dt>
                                <dd>${h_detail.h_petWeight}</dd>
                            </dl>
                            <dl class="mgr_0">
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_moneyadd_line.png?ver=2" alt="??????" /></dt>
                                <dd>${h_detail.h_price}???</dd>
                            </dl>
                        </div>
                        <!--// ?????? ?????? e -->
                    </div>
                </div>
            </div>
            <!--// sub m top -->

            <!-- sub m btm -->
            <div class="s21_tour_de_btm area">
                <div class="s21_tab">
                    <button class="tablinks" onclick="openCity(event, 'info')" id="defaultOpen">????????????</button>
                    <button class="tablinks" id="reviewOpen" onclick="openCity(event, 'review')">??????</button>
                </div>

                <!-- ???????????? s -->
                <div id="info" class="s21_tabcontent">
                    <div class="s21_tabcontent_left">
                        <div class="">
                        	<c:forTokens var="h_d" items="${h_detail.h_detail}" delims=",">
                            	<img src="hotel/${h_detail.h_id}/h_detail/${h_d}" style="max-width: 100%; image-orientation: from-image" alt="" />
                            </c:forTokens>
                            <br />
                        </div>
                    </div>

                    <!-- ????????? ????????? s-->
                    <div class="s21_tabcontent_right">
                        <div class="s21_tabcontent_rightbox">

                            <!-- ???????????? ???????????? button s -->
                            <div class="s21_tabcontent_rbtn">
                                <button type="button" class="bg_orange" onclick="loginCheck(${loginRs eq null?0:loginRs},'booking?h_id=${h_detail.h_id}');">????????????</button>
                            </div>
                            <!--// ???????????? ???????????? button e -->


                            <!-- ?????????????????? s -->
                            <div class="s21_tabcontent_more">
                                <div class="s21_tabcontent_more_tit">
                                    <h4>?????? <span>????????????</span></h4>
                                </div>
                                <p class="s21_tabcontent_more_spot">
                                    ????????? ???????????? ??????, ????????? ?????? ????????? ??????????????? ?????? ?????? ????????? ??? ????????????.
                                    <br><span>?????????, ?????? ??? ??? ????????? ?????? ??????????????????.</span>
                                </p>
                            </div>
                            <!--// ?????????????????? e -->

                            <!-- ???????????? s -->
                            <div class="s21_tabcontent_rbtn_btm">
                                <button type="button" class="bg_mgray" onclick="loginCheck(${loginRs eq null?0:loginRs},'applyHotel');">?????? ??? ?????? ?????? ??????</button>
                            </div>
                            <!-- ???????????? e -->

                        </div>
                    </div>

                    <!-- ????????? ????????? e-->

                </div>
                
                <!--// ???????????? e -->

                <!-- ?????? s -->
                
                <div id="review" class="s21_tabcontent">
                    <input type="hidden" id="rpage" name="page" value="1" />
                    <input type="hidden" id="ppage" name="page" value="1" />
                    <div class="s21_tabcontent_left">
						<!-- ????????????s -->
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>???????????? <span id="review_total"><c:forEach items="${h_review}" varStatus="rvCnt">${rvCnt.last?rvCnt.count:''}</c:forEach></span></h5>
								<button type="button" class="s21_review_wbtn pa" onclick="loginCheck(${loginRs eq null?0:loginRs},'writeReview');">???????????? ???</button>
							</div>
							
							<div class="s21_review_listb" id="review_list">
							
								<c:forEach items="${h_review}" var="rv">
								<div class="s21_review_list">
									<a href="detailReviewPage?mb_id=${rv.mb_id}">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">${rv.m_nick}<span>${rv.mb_regidate}</span></dt>
										<dd>${rv.mb_content}</dd>
									</dl>
									</a>
								</div>
								</c:forEach>
							</div>

							<!-- more btn s -->
							<span class="addreview_1">
								<a id="addreview">
									<p class="s21_review_more">+ ?????????</p>
								</a>
							</span>
							<!--// more btn e -->

						</div>
						<!--// ????????????e -->
					</div>

                    <!-- ????????? ????????? s-->
                    <div class="s21_tabcontent_right">
                        <div class="s21_tabcontent_rightbox">

							
                            <!-- ???????????? ???????????? button s -->
                            <div class="s21_tabcontent_rbtn">
								<button type="button" class="bg_orange" onclick="loginCheck(${loginRs eq null?0:loginRs},'booking?h_id=${h_detail.h_id}');">????????????</button>
                            </div>
                            
                            <!--// ???????????? ???????????? button e -->
                            <!-- ?????????????????? s -->
                            <div class="s21_tabcontent_more">
                                <div class="s21_tabcontent_more_tit">
                                    <h4>?????? <span>????????????</span></h4>
                                </div>
                                <p class="s21_tabcontent_more_spot">
                                    ????????? ???????????? ??????, ????????? ?????? ????????? ??????????????? ?????? ?????? ????????? ??? ????????????.
                                    <br><span>?????????, ?????? ??? ??? ????????? ?????? ??????????????????.</span>
                                </p>
                            </div>
                            <!--// ?????????????????? e -->

                            <!-- ???????????? s -->
                            <div class="s21_tabcontent_rbtn_btm">
                                <button type="button" class="bg_mgray" onclick="loginCheck(${loginRs eq null?0:loginRs},'applyHotel');">?????? ??? ?????? ?????? ??????</button>
                            </div>
                            <!-- ???????????? e -->

                        </div>
                    </div>
                    <!-- ????????? ????????? e-->

                </div>
                <!--// ?????? e -->

                <script>
				var swiper_main = new Swiper('.swiper-container', {
					loop: true,
					autoplay: {
				        delay: 5000,
				        disableOnInteraction: false,
				     },
					pagination: {
				        el: '.swiper-pagination4',
				        type: 'fraction',
				      },
					navigation: {
						prevEl: '.button_prev',
						nextEl: '.button_next',	
					},threshold : 20,//???????????? px

				});
				
				/**????????? ?????? (??????,???????????????,???????????? OK!) **/
				function eventOccur(evEle, evType){
					if (evEle.fireEvent) {
						evEle.fireEvent('on' + evType);
					} else {
						//MouseEvents??? ????????? ?????? Events??? ??????~ ??
						var mouseEvent = document.createEvent('MouseEvents');
						/* API?????? initEvent(type,bubbles,cancelable) */
						mouseEvent.initEvent(evType, true, false);
						var transCheck = evEle.dispatchEvent(mouseEvent);
						if (!transCheck) {
							//?????? ???????????? ???????????????
							//console.log("?????? ????????? ?????? ??????!");
						}
					}
				}
				function viewImgSlide(review_idx,n){
					window.open("?m1Code=ar_info&m2Code=ar_img&mode=view&bidx=8898&review_idx="+review_idx+"&img_key="+n);
				}
	                    function openCity(evt, cityName) {
	                        var i, tabcontent, tablinks;
	                        tabcontent = document.getElementsByClassName("s21_tabcontent");
	                        for (i = 0; i < tabcontent.length; i++) {
	                            tabcontent[i].style.display = "none";
	                        }
	                        tablinks = document.getElementsByClassName("tablinks");
	                        for (i = 0; i < tablinks.length; i++) {
	                            tablinks[i].className = tablinks[i].className.replace(" active", "");
	                        }
	                        document.getElementById(cityName).style.display = "block";
	                        evt.currentTarget.className += " active";
	                        if (cityName == "map_info") {
	                            kakaomap_init();
	                        }
	                        if ($(".s21_tab").position().top == 0) { //??????????????? ????????? ??? ?????? ??? ????????? ????????? ????????? ????????? ?????? 
	                            if (cityName == "info") {
	                                class_position = ".s21_de_food_img_st";
	                            } else if (cityName == "map_info") {
	                                class_position = ".s21_map_twrap";
	                            } else {
	                                class_position = ".s21_review_tit";
	                            }
	                            $('html').animate({
	                                scrollTop: $(class_position).position().top + 40
	                            }, 0);
	                        }
	                    }
	                    // Get the element with id="defaultOpen" and click on it
	                    document.getElementById("defaultOpen").click();
	                    
	                    function check(){
	                    	if($("input[class='imgupload']").length >= 3) { 
	                    		alert('?????? 3?????? ?????? ???????????????.');
	                    		return false;
	                    	}

	                    	eventOccur(document.getElementById('upload_file'),'click');
	                    }

	                    $('#upload_file').fileupload({
	                    		url : 'http://img.hungryapp.co.kr/image_upload.php',
	                    		dataType : 'json',
	                    		formData : {upload_path:"/images/hatdog/upload/202112/",max_width:1000},
	                    		//replaceFileInput: false,
	                    		sequentialUploads: true,
	                    		add: function(e, data){
	                    			
	                    			$("#imgUploadWAIT").addClass("advice_on");  
	                    			var uploadFile = data.files[0];

	                    			if (!(/png|jpe?g|gif/i).test(uploadFile.name)){
	                    				alert('png, jpg, gif ????????? ???????????????');
	                    				$("#imgUploadWAIT").removeClass("advice_on"); 
	                    				return false;
	                    			}else if (uploadFile.size > (5*1024*1024)) { // 5mb
	                    				alert('?????? ????????? 5MB??? ????????? ??? ????????????.');
	                                    $("#imgUploadWAIT").removeClass("advice_on"); 
	                    				return false;
	                    			}
	                    			data.submit();
	                    		},done: function (e, data){
	                    			var result = data.result;
	                    			if(!result){
	                    				alert("?????? ??????");
	                    				return false;
	                    			}

	                    			if(result.result == 1){
	                    				var tag = "";
	                    				tag = "<div id=\""+result.path+"\" onclick=\"javascript:removeImg(this);\">";
	                    				tag += "<a class=\"s21_img_del_btn\">??????</a>";
	                    				tag += "<img src='"+result.path+"' style='max-width:100%;image-orientation: from-image;'>";
	                    				tag += "<input type=\"hidden\" class=\"s21_imgupload imgupload\" name=\"imgupload[]\"  value=\""+result.path+"\" > </div>";
	                    				$("#imgupload").append(tag);
	                    				$("#imgUploadWAIT").removeClass("advice_on"); 
	                    			}else{
	                    				alert(result.msg);
	                    			}
	                    		},fail: function(e, data) {
	                    			alert(JSON.stringify(e));
	                    			alert("????????? ??? ????????? ??????????????????.\n?????? ?????? ?????? ??????????????????.");
	                    			$("#imgUploadWAIT").removeClass("advice_on"); 
	                    		}
	                    	});
	                            
	                    	$("#mul_input_submit").click(function() {
	                    		if(!$.trim($("#contents").val()).length){
	                    			alert("?????? ????????? ????????? ?????????.");
	                    			$("#contents").focus();
	                    			return;
	                    		}
	                            
	                    		if ($(".imgupload").length == 0 ) {
	                    			if (!confirm("???????????? ???????????? ???????????????.\n????????? ?????? ???????????????????")) return;
	                    		}

	                    		formData = $("#checkForm").serialize();
	                    		imgData = $("#imgForm").serialize();
	                    		$.ajax({
	                    				url: "reviewHotel",
	                    				type: "POST",
	                    				dataType: 'json',
	                    				data: formData+"&"+imgData,
	                    				success: function(r){
	                    				//	alert(r.msg);
	                    						console.log("success");
	                    					if(!r.result){
	                    						console.log(r);
	                    						console.log(r.asdf);
	                    						//alert(r.msg);
	                    						//alert("???????????? ????????? ???????????? ????????????.\n\n?????? ?????? ?????? ??????????????????.");
	                    					}else{
	                    						Store.set("ar_tab","reviewOpen");
	                    						location.reload();
	                    					}
	                    				},
	                    				
	                    				error: function(request,status,error){
	                    						console.log("error");
	                    				}
	                    		});//end ajax
	                                    
	                    });
	                    function removeImg(n){
	                    	if (!confirm("?????????????????????????")) return;
	                    	$(n).remove();
	                    }
	                    
	                    function review_set(mode, r_idx){
	                    	$("html").css("overflow","hidden");
	                    	$("#id01").show();
	                    	$('#r_mode').val(mode)
	                    	$('#r_idx').val(r_idx)
	                    	if (mode=="up"){
	                    		$.ajax({
	                    			url: "ajaxData_arinfo.php",
	                    			type: "POST",
	                    			dataType: 'json',
	                    			data: "m2Code=ar_info&mode=review_get&r_idx="+r_idx,
	                    			success: function(r){
	                    				$("#contents").val(r.r_content);
	                    				$("#imgupload").html(r.r_img_arr);
	                    			},
	                    			
	                    			error: function(request,status,error){
	                    			}
	                    		});//end ajax
	                    	}
	                    }
	                    function delReview(idx){
	                        if (!confirm("????????? ?????? ???????????????????")) return;
	                        $.ajax({
	                                url: "ajaxData_arinfo.php",
	                                type: "POST",
	                                dataType: 'json',
	                                data: "idx=" + idx + "&mode=del&m2Code=ar_info",
	                                success: function(r){
	                                    if(!r.result){
	                                        alert(r.msg);
	                                    }else{
	                                         Store.set("ar_tab","reviewOpen");
	                    					location.reload();
	                                    }
	                                },
	                                error: function(error){
	                                }
	                            });//end ajax
	                    }
	                </script>
            </div>
            <!--// sub m btm -->
        </div>
    </div>
    <!-- //container -->
    <!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>

</html>