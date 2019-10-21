<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var management = [ "재무회계", "인사총무", "교육관리" ];
	var sales = [ "영업", "영업지원" ];
	var production = [ "생산계획", "A/S", "품질관리" ];
	var teamchange;
	$(document).ready(function() {
		$("#division").change(function() {
			var selectdivision = this.value;
			if (selectdivision == "관리부") {
				teamchange = management;
				alert(selectdivision);
			} else if (selectdivision == "영업부") {
				teamchange = sales;
				alert(selectdivision);
			} else if (selectdivision == "생산부") {
				teamchange = production;
				alert(teamchange);
			}
			for (var i = 0; i < teamchange.size(); i++) {
				var option = "<option>" + teamchange[i] + "</option>";
				$("#team").append(option);
			}

		});
	});
</script>
<script>
	var today = new Date();
	var localeDate = today.toLocaleDateString();
	document.getElementById('joindate').innerHTML = localeDate;
</script>