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
	    String driverName = "oracle.jdbc.driver.OracleDriver"; //�����ͺ��̽��� �����ϱ����� ����̹��� �ε��մϴ�.
	    String url = "jdbc:oracle:thin:@localhost:1521:XE";            //���� URL������ ��Ʈ��ȣ(oracle��Ʈ), sid(oracle����)
	    
	    Class.forName(driverName);
	    Connection con = DriverManager.getConnection(url,"board","board");    // getCo... : �������� url, id, pw
		System.out.println("Oracle �����ͺ��̽� db�� ���������� �����߽��ϴ�");
		con.close();
	} catch (Exception e) {
		System.out.println("Oracle �����ͺ��̽� db ���ӿ� ������ �ֽ��ϴ�. <hr>");
		System.out.println(e.getMessage());
		e.printStackTrace();
	}
%>
<body>

</body>
</html>