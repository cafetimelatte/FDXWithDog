function uploadPreview(event){
	if(document.URL.indexOf("addHotelM")!=-1){
		if(fileChk(event, 0)){
			hotelPreview(event,"add");
		}
	} else{
		var cnt = event.closest(".imgContainer").querySelector(".uploadedImgs").childElementCount;
		if(fileChk(event, cnt)){
			hotelPreview(event,"update");
		}
	}
};

var totalCount = 5;
function fileChk(event, fileCount){
	console.log(fileCount);
	var files = event.files;
   	var filesArr = Array.prototype.slice.call(files);
   	if(fileCount + filesArr.length > totalCount){
   		alert("파일은 최대 " + totalCount + "개까지 업로드 가능합니다.");
   		return false;
   	}
   	for(var i = 0; i < filesArr.length; i++){
   		var fileSize = filesArr[i].size;
   		var maxSize = 5 * 1024 * 1024;
   		if(fileSize > maxSize){
   			alert("파일의 허용 크기는 5MB 이하 입니다.");
   			return false;
   		} else if(!typeVerify.test(filesArr[i].name)){
   			alert("이미지 파일만 업로드 가능합니다.");
			return false;
   		}
   	}
   	return true;
};
function hotelPreview(event, type) {
	function basicPreview(file) {
        var reader = new FileReader();
		var preview = event.closest(".imgContainer").querySelector(".selectedImg");
        while (preview.firstChild) {
            preview.removeChild(preview.firstChild);
        }
        reader.addEventListener("load", function() {
            var list = document.createElement("div");
            list.classList.add("pv");
            var image = new Image();
            image.title = file.name;
            image.src = this.result;
            list.appendChild(image);
            preview.appendChild(list);
        }, false);
        console.log(file);
        reader.readAsDataURL(file);
    }
	function otherPreview(file) {
        var reader = new FileReader();
        if (event.name == 'filesI') {
            var container = document.getElementsByClassName("swiper-wrapper");
        } else if (event.name == 'filesD') {
            var container = document.getElementsByClassName("s21_tabcontent_left");
        }
        while (container[0].firstChild) {
            container[0].removeChild(container[0].firstChild);
        }
        reader.addEventListener("load", function() {
            var image = new Image();
            image.title = file.name;
            image.src = this.result;
            if (event.name == 'filesI') {
                var content = document.createElement("p");
                content.classList.add("swiper-slide");
            } else if (event.name == 'filesD') {
                var content = document.createElement("div");
            }
            content.appendChild(image);
            container[0].appendChild(content);
        }, false);
        console.log(file);
        reader.readAsDataURL(file);
    }
    if (event.files) {
		if(type == "add"){
			[].forEach.call(event.files, basicPreview);
			[].forEach.call(event.files, otherPreview);
		} else if(type == "update"){
			[].forEach.call(event.files, basicPreview);
		}
    }
};

var typeVerify = /\.(jpe?g|png|gif)$/i;

function exclude(event){
	var uploadedImg = event.closest(".uploadedImg");
	var uploadedImgs = event.closest(".uploadedImgs");
	var imgContainer = event.closest(".imgContainer");
	var fileInput = imgContainer.querySelector(".fileSelect").querySelector("input")
	
	var del = document.createElement("div");
	var back = document.createElement("input");
	var rec = document.createElement("button");

	uploadedImg.style.display = "none";
	del.classList.add("del");
	del.style.display = "inline-block";
	back.type = "hidden";
	back.name = "del_" + fileInput.name;
	back.value = uploadedImg.querySelector("img").title;
	rec.type = "button";
	rec.textContent = uploadedImg.querySelector("img").title + " 되돌리기";
	rec.addEventListener("click", event => {
		fileCount = uploadedImgs.childElementCount;
	   	var filesArr = Array.prototype.slice.call(fileInput.files);
	   	if(fileCount + filesArr.length == totalCount){
	   		alert("파일은 최대 " + totalCount + "개까지 업로드 가능합니다.");
	   		return false;
	   	}
		uploadedImg.style.display = "inline-block";
		uploadedImgs.appendChild(uploadedImg);
		del.remove();
	});
	
	imgContainer.insertBefore(del, imgContainer.querySelector(".selectedImg"));
	del.appendChild(uploadedImg);
	del.appendChild(back);
	del.appendChild(rec);
	
}