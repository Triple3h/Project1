function onUploadImg(){
    window.open('Upload.jsp','','width=500px,height=500px');
}

function onChangeImgValue(_fileName) {
    if(_fileName){
        document.getElementById("goodsPic").style.display = 'block';
        document.getElementById("goodsPic").src = "upload/"+_fileName;
        document.getElementById("goodsInfoPic").value=_fileName;
    }else{
        document.getElementById("goodsInfoPic").style.display = 'none';
    }
}

function onBack() {
    history.back();
}