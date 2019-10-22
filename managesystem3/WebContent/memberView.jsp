<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="" method="post">
	<div>
		<table border="1">
			<tr>
			<td><a style="font-size: 13px;">사번</a></td>
			<td id=></td>
			<td ><a style="font-size: 13px;">입사일</a></td>
				<td ><input type="date" name="joindate"
					id="joindate" /></td>
			</tr>
			
			<tr>
				<td ><a style="font-size: 13px;">사원명</a></td>
				<td ><input type="text" name="name" /></td>
				<td ><a style="font-size: 13px;">생년월일</a></td>
				<td ><input type="text" name="birth" /></td>
			</tr>
			<tr>
				<td ><a style="font-size: 13px;">연락처</a></td>
				<td ><input type="text" name="phone" /></td>
			</tr>
			
			<tr>
				<td ><a style="font-size: 13px;">주소</a></td>
				<td colspan="3"><a style="font-size: 10px;">우편번호
				 <input	type="text" name="adrr1" style="width: 60px;" />
				 <input type="button" value="우편번호검색"><br /> 
				 <input type="text" name="adrr2" /> 
				 <input type="text" name="adrr3" /></td>
			</tr>
			<%
				String division = null;
			%>
			<tr>
				<td ><a style="font-size: 13px;">소속</a></td>
				<td ><select name="division" id="division">
						<option>부서 선택</option>
						<option>관리부</option>
						<option>영업부</option>
						<option>생산부</option>
				</select> <select name="team" id="team">
						<option value="">팀 선택</option>
				</select>
				<td><a style="font-size: 13px;">직급</a></td>
				<td><select name="grade" id="grade">
						<option value="sawon">사원</option>
						<option value="juyim">주임</option>
						<option value="daeli">대리</option>
						<option value="gyuajang">과장</option>
						<option value="chajang">차장</option>
						<option value="bujang">부장</option>
				</select></td>
			</tr>
			<tr>
			<tr>
			<td><a style="font-size: 13px;">재직상태</a></td>
			<td><select id="hold office" value="hold office">
			<option>재직자</option>
			<option>퇴사자</option>
			</select><!-- 퇴사자로 선택 시 퇴사일 항목 뜨게 함 -->
			<td ><a style="font-size: 13px;">퇴사일</a></td>
				<td ><input type="date" name="resigndate"
					id="resigndate" /></td>
			</tr>
				<td ><a style="font-size: 13px;">특이사항</a></td>
				<td colspan="3"><textarea cols="50" rows=" 10" name="significant"></textarea></td>
			</tr>		
		</table>
	</div>
	<div>
	<div id="viewButton" style="float : left;">
	<input type="submit" value="수정">
	<button onclick="">취소</button>
	</div>	
	<div id="veiwLog" style="float : right;">
	<a style="font-size: 13px;">최근 수정 기록 : </a> 
	</div>
	</div>
</form>