<%@page import="java.sql.*"
import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<h1>판매현황</h1>
	<table border="1">
		<thead>
			<tr>
				<th>비번호</th>
				<th>상품코드</th>
				<th>판매날짜</th>
				<th>매장코드</th>
				<th>상품명</th>
				<th>판매수량</th>
				<th>총판매액</th>
			</tr>
		</thead>
		<tbody>
			<%
			{
				Connection conn = DB.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("select saleno, p.pcode, TO_CHAR(saledate,'YYYY-MM-DD'), s.scode, name, amount, TO_CHAR(cost*amount,'999,999,999') from tbl_product_01 p,tbl_shop_01 s, tbl_salelist_01 sl where p.pcode = sl.pcode and s.scode = sl.scode order by saleno ASC");
			
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()){
					%>
					<tr>
						<td><%= rs.getString(1) %></td>
						<td><%= rs.getString(2) %></td>
						<td><%= rs.getString(3) %></td>
						<td><%= rs.getString(4) %></td>
						<td><%= rs.getString(5) %></td>
						<td><%= rs.getString(6) %></td>
						<td><%= rs.getString(7) %></td>
					</tr>
					<% 
					
				}
				
			}
				%>
		</tbody>
	</table>
</section>
</body>
</html>