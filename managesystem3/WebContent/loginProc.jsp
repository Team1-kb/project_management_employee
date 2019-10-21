<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
//	1. 쿠키 만들기

	String rememberInfo = request.getParameter("rememberInfo");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pw", request.getParameter("pw"));
	
//	2. DB연결할 메니저 연결

//	3. 메인 페이지 보내기
	response.sendRedirect("main.jsp");
	%>
</body>
</html>