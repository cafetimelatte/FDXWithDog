function uploadPreview(event){
	if(document.URL.indexOf("addHotelM")!=-1){
		if(fileChk(event, 0)){
			addHotelPreview(event);
		}
	} else{
		var cnt = event.closest("form").querySelector("#imgs").childElementCount;
		if(fileChk(event, cnt)){
			updateHotelPreview(event);
		}
	}
};

function fileChk(event, fileCount){
	var files = event.files;
   	var totalCount = 5;
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

function addHotelPreview(event) {
    function readAndPreview(file) {
        var reader = new FileReader();
        if (event.name == 'filesI') {
            var preview = document.getElementById("previewI");
            var container = document.getElementsByClassName("swiper-wrapper");
        } else if (event.name == 'filesD') {
            var preview = document.getElementById("previewD");
            var container = document.getElementsByClassName("s21_tabcontent_left");
        }
        while (preview.firstChild) {
            preview.removeChild(preview.firstChild);
        }
        while (container[0].firstChild) {
            container[0].removeChild(container[0].firstChild);
        }
        reader.addEventListener("load", function() {
            var list = document.createElement("div");
            list.classList.add("pv");
            var image1 = new Image();
            image1.title = file.name;
            image1.src = this.result;
            var image2 = image1.cloneNode(false);
            if (event.name == 'filesI') {
                var content = document.createElement("p");
                content.classList.add("swiper-slide");
            } else if (event.name == 'filesD') {
                var content = document.createElement("div");
            }
            list.appendChild(image1);
            content.appendChild(image2);
            container[0].appendChild(content);
            preview.appendChild(list);
        }, false);
        console.log(file);
        reader.readAsDataURL(file);
    }
    if (event.files) {
        [].forEach.call(event.files, readAndPreview);
    }
};

var typeVerify = /\.(jpe?g|png|gif)$/i;

