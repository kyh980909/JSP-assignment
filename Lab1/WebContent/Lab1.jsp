<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<script>
function check_form(f) {	// form 입력 값 들을 확인하는 함수
	var name_chk = document.getElementById("name_chk");		// 각 태그의 id 값을 가져와 변수에 저장
	var tel_chk = document.getElementById("tel_chk");
	var count_chk = document.getElementById("count_chk");
	
	// 입력해야할 것들을 다 입력했는지 확인할 변수
	var name_bool = false;
	var tel_bool = false;
	var count_bool = false;
	
	name_chk.innerHTML = "";
	tel_chk.innerHTML = "";
	count_chk.innerHTML = "";
	
	if (f.name.value == "" || f.name.value.length == 0) {	// 입력하지 않았을 때
		name_chk.innerHTML = "* 이름을 입력해주세요";	// 출력
	} else { // 입력했을 떄
		name_bool = true;	// 입력 확인 값을 참으로 변경
	}
	
	if (f.tel.value == "" || f.tel.value.length == 0) {
		tel_chk.innerHTML = "* 전화번호를 입력해주세요";
	} else {
		tel_bool = true;
	}
	
	if (f.count.value == "0") {
		count_chk.innerHTML = "* 수량을 입력해주세요";
	} else {
		count_bool = true;
	}
	
	if (name_bool && tel_bool && count_bool) {	// 다 입력 했을 경우
		return confirm("상품을 주문 하시겠습니까?");	// confirm 창을 띄워서 확인을 누를시 다음 페이지로 변경 아닐시 페이지 바꾸지 않음
	} else {	// 다 입력하지 않았을 때
		return false;	// 페이지 옮기지 않음
	}
}

function nameFocus() {	// 이름이 포커싱 됬을 때 입력 창 옆에 경고 표시를 지움
	var name_chk = document.getElementById("name_chk");
	name_chk.innerHTML = "";
}

function telFocus() {	// 전화번호가 포커싱 됬을 때 입력 창 옆에 경고 표시를 지움
	var tel_chk = document.getElementById("tel_chk");
	tel_chk.innerHTML = "";
}

function countFocus() {	// select box가 포커싱 됬을 때 입력 창 옆에 경고 표시를 지움
	var count_chk = document.getElementById("count_chk");
	count_chk.innerHTML = "";
}

function onChange() {	// select box에 값이 변경 됬을 때 실행되는 함수
	var total_price = document.getElementById("total_price");
	var total_price_value = document.getElementById("total_price_value");
	var count = document.getElementById("count");
	
	total_price_value.value = count.options[count.selectedIndex].value * 5000;	// select box에 있는 수량에 비례하여 금액이 증가
	total_price.innerHTML = total_price_value.value;
}

function onReset() {	// 다시 쓰기 함수
	var reset = confirm("정말 취소하시겠습니까?");
	
	return reset;
}

</script>
<title>Lab1</title>
</head>
<body>
	<div id="container">
		<h2>상품 구매 양식</h2>
		<p style="color: red; font-size: 10px">모든 항목을 모두 채워주세요.</p>
		<hr>
		<form action="Lab1_result.jsp" name="form" method="post" onsubmit="return check_form(form);"
			onreset="return onReset();">
			<p>이름</p>
			<input type="text" id="name" name="name" onfocus="nameFocus();" autofocus>
			<span id="name_chk"> </span>
			<p>전화번호</p>
			<input type="text" id="tel" name="tel" placeholder="-제외하고 입력"
				onfocus="telFocus();">
			<span id="tel_chk"> </span>
			<p>사이즈</p>
			<label> 
				<input type="radio" name="size" value="S" checked>S
				<input type="radio" name="size" value="M">M 
				<input type="radio" name="size" value="L">L
			</label>
			<p>수량</p>
			<select id="count" name="count" onchange="onChange();" onfocus="countFocus();">
				<option value="0" selected>선택하세요</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
			<span id="count_chk"> </span>
			<hr>
			<div class="total">
				금액 : <span id="total_price" name="total_price" style="font-size: 25px"> 0 </span>
				<input type="hidden" id="total_price_value" name="total_price_value">
			</div>
			<p>
				<input type="submit" value="제출">
				<input type="reset"	value="다시쓰기">
		</form>
	</div>
</body>
</html>