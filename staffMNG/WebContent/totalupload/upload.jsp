<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% String fname = request.getParameter("fname"); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var fileTarget = $('#file #fname');
fileTarget.on('change', function(){ // 값이 변경되면
if(window.FileReader){ // modern browser
var filename = this.files[0].name;
 }else { // old IE
 var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
}  // 추출한 파일명 삽입
$(this).siblings('#fname').val(filename);
});

function doAddFname(text){
	document.all.file.click();
	fm = document.form;
	fm.FileList.value = text;
	Syetem.out.println(text);
	Syetem.out.println(fm.FileList.value);
//	var fnm = fm["file"].value;
}
</script>
<style type="text/css">
.outline{
	position: relative;
	width: 100%; 
	height: 100%; 
}
.in_top{
	background-color: lightpink; 
	width: 100%; 
	height: 20%; 
}
.in_middle{
	background-color: lightyellow; 
	width: 95%; 
	height: 70%; 
	
}
.in_bottom{}
</style>
</head>
<body>

<div class="outline">
<div class="in_top">
<p>
<form action="uploadProc.jsp" enctype="multipart/form-data" method="post">
<a class="btn" style="font-size: 13px;" href="/Sample_1.xlsx" download>샘플파일 다운로드</a>
</p>
<p>
<a>파일: </a><button type="button" onclick="doAddFname();">파일찾기</button> 
<input type="file" name="file" id="file" style="display:none" onchange="javascript:document.getElementById('fㅜame').value = this.value"/><br/>
<input type="text" name="fname" id="fname" ><br/>
<input type="submit" name="upload" value="파일등록"/><br/>
</p>
</form>
</div>

<div class="in_middle">
<%@include file="uploadView.jsp" %>
</div>
<div class="in_bottom">
<button>저장</button>
</div>
</div>

</body>
</html>