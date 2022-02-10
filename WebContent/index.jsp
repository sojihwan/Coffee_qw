<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장별 커피 판매관리 Ver 1.0</title>
	<style>
		header{
			position: fixed;
			height: 50px;
			width: 100%;
			text-align: center;
			background-color: aqua;
			color: black;
			top: 0px;
			left: 0px;
			font-size: 25px;
		}
		nav{
			background-color: gray;
			position: fixed;
			top: 50px;
			color: black;
			width: 100%;
			left: 0px;
			height: 40px;
		}
		nav > a{
			text-decoration: none;
		}
		section{
			background-color: threedface;
		}
		footer{
			position: fixed;
			background-color: black;
			color: white;
			bottom: 0px;
			width: 100%;
			height: 20px;
			left: 0px;
			text-align: center;
		}
		section{
			position: fixed;
			width: 100%;
			top:90px;
			left: 0px;
			height: 100%;
		}
		section > h1{
			text-align: center;
		}
		table {
    margin-left:auto; 
    margin-right:auto;
}
	</style>
</head>
<body>
	<header><b>매장별 커피 판매관리 Ver 1.0</b></header>
	<nav>
		<a href="index.jsp?section=1">판매등록</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp?section=2">판매현황</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp?section=3">판매별판매액</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp?section=4">상품별판매액</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp?section=home">홈으로</a>&nbsp;&nbsp;&nbsp;&nbsp;
	</nav>
	<section>
		<%
			String section =request.getParameter("section");
			if(section==null) section="";
			
			switch(section){
			case "1":
				%><%@ include file="./page/1.jsp" %><%
				break;
			
			case "2":
				%><%@ include file="./page/2.jsp" %><%
				break;
			
			case "3":
				%><%@ include file="./page/3.jsp" %><%
				break;
			
			case "4":
				%><%@ include file="./page/4.jsp" %><%
				break;
			
			default:
				%><%@ include file="./page/home.jsp" %><%
			}
		%>
	</section>
	<footer>
		Copyight @ 22018 All right reserved Hanyang High School
	</footer>
</body>
</html>