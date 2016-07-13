<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String idx = request.getParameter("idx");
	String title = request.getParameter("title");
	String regdate = request.getParameter("date");

	try {
	    String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다.
	    String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)
	    
	    Class.forName(driverName);
	    Connection con = DriverManager.getConnection(url,"board","board");    // getCo... : 계정정보 url, id, pw
		System.out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
		con.close();
	} catch (Exception e) {
		System.out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
		System.out.println(e.getMessage());
		e.printStackTrace();
	}
%>
<body>

</body>
</html>