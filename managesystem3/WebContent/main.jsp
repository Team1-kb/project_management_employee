<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.mainTop {
	width: 80% height: 10%;
	background-color: yellow;
	height : 800px;
}

.mainLeft {
	float: left;
	width: 60%; 
	background-color: pink;
}

.mainright {
	float: right;
	width: 40%;
	background-color: skyblue;
}
</style>
</head>
<body>
	<div class="mainTop">
		<div><%=session.getAttribute("id")%>님 페이지 입니다.
		</div>
		<div>
			<input type="button" value="사원 목록" /> <input type="button"
				value="일괄 등록" />
		</div>
	</div>
	<div class="mainLeft">
		<jsp:include page="memberModify.jsp"></jsp:include>
	</div>
	<div class="mainright">
		<jsp:include page="memberInsert.jsp"></jsp:include>
	</div>


	<div class="mainbottom"></div>
</body>
</html>