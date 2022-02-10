<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
	<section>
		<h1>판매등록</h1>
		<div style="margin: auto; text-align: center;">
		<form action="./action/add.jsp" onsubmit="return check()">
		<table border="1">
		<tr>
			<th>비번호</th>
			<td><input name="saleo"></td>
		</tr>
		<tr>
			<th>상품코드</th>
			<td><input name="pcode"></td>
		</tr>
		<tr>
			<th>판매날짜</th>
			<td><input name="saledate"></td>
		</tr>
		<tr>
			<th>매장코드</th>
			<td><input name="scode"></td>
		</tr>
		<tr>
			<th>판매수량</th>
			<td><input name="amount"></td>
		</tr>
		<tr>
			<th colspan="2">
				<button type="submit">등록</button>
				<button type="button" onclick="formRest()">다시쓰기</button>
			</th>
		</tr>
		</table>
		</form>
		</div>
	</section>
	<script type="text/javascript" src="SM.js"></script>
</body>
</html>