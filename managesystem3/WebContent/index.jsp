<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="tableStyle.css">

</head>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberInfo = null;
	String id = null;
	String pw = null;

	if (cookies != null && cookies.length > 0) {
		for (int i =0; i<cookies.length; i++){
			
		}
	}
%>
<body>
<%	// 1. 세션 정보 없을 때
	if(session.getAttribute("id")==null){ %>
	<form action="loginProc.jsp" method="post"></form>
	<div>
		<table id="loginTable">
			<tr>
				<td colspan="2" align="center">로그인 페이지 입니다.</td>
			</tr>
			<tr>
				<td id="logintd1"><a style=" font-size: 13px;">아 이 디</a></td>
				<td id="logintd2" ><input type="text" name="id" value="<%=(id == null ? "" : id)%>" id="logininput"/></td>
			</tr>
			<tr>
				<td id="logintd1"><a style=" font-size: 13px;">비밀번호</a></td>
				<td id="logintd2" ><input type="password" name="pw" value="<%=(pw == null ? "" : pw)%>" id="logininput"/></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="rememberInfo" value="keep"
					<%=(rememberInfo == null ? "" : "checked=\"checked\"")%> /><a style=" font-size: 10px;"> 로그인 정보 기억</a></td>
				<td align="right"><input type="submit" value="login" /></td>
			</tr>
		</table>
	</div>
<%	// 2. 세션 정보 없을 때
	}else{ %>
	<div>
		<table id="loginTable">
			<tr>
				<td colspan="2" align="center"><%=session.getAttribute("id") %> 님 환영합니다.</td>
			</tr>
			<tr>
				<td id="logintd1"><form action=""><input type="submit" name="id" value="메인 화면"/></form></td>
				<td id="logintd2"><form action="Logoutform.jsp" method="post"><input type="submit" name="id" value="로그아웃"/></form></td>
			</tr>
		</table>
	</div>
<% } %>
</body>
</html>