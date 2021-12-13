<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>write page</h2>
	<form name="writeReview" method="POST" action="${path}writeReviewpro" enctype="multipart/form-data">
		<!-- <div>닉네임 : <input name="m_id"/></div>
		<div>호텔번호 : <input name="h_id"/></div> -->
		<div>제목 :</div>
		<div>
			<input name="mb_title" type="text" />
		</div>
		<div>내용 :</div>
		<div>
			<input name="mb_content" type="text" />
		</div>
		<div class="inputArea">
			<label for="mb_img">이미지</label> 
			<input type="file" id="mb_img" name="file" />
			<div class="select_img">
				<img src="" />
			</div>

			<script>
				$("#mb_img").change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
			</script>
			<%=request.getRealPath("/") %>
		</div>
		<div>
			<button type="submit">등록</button>
			<button type="button">
				<a href="${path}ReviewPage?num=1">취소</a>
			</button>
		</div>
	</form>

</body>
</html>