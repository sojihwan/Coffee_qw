<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    import="DBPKG.DB"%>
<%
	String saleno =request.getParameter("saleno");
	String scode =request.getParameter("scode");
	String saledate =request.getParameter("saledate");
	String pcode =request.getParameter("pcode");
	String amount =request.getParameter("amount");
	
		try{
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(String.format("INSERT TNTO TBL_SALEIST_01 VALUES(%s, %s, %s, %s, %s)",
					saleno,pcode,saledate,scode,amount));
			pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
%>
<script>
	location,href = '../index.jsp?section=1';
</script>