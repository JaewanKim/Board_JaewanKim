<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="main_stylesheet.css" rel="stylesheet" type="text/css"/>
<link href="list_stylesheet.css" rel="stylesheet" type="text/css"/>
<title> Board_JaewanKim/list </title>
</head>
<%
    int idx = 1;
    String title = request.getParameter("title");
    String regdate = request.getParameter("regdate");
%>
<body>
<div class="headWrap">

	<a href="main.jsp"><img src="queryfly.PNG"/></a>
	
	<span class="nav">
		<ul>
			<li><a href="#">INTRODUCTION</a></li>
			<li><a href="add.jsp">ADD</a></li>
			<li><a href="list.jsp">FLYS</a></li>
			<li><a href="#">CONTACT</a></li>
		</ul>
	</span> <!-- nav End -->
</div> <!-- headWrap End -->

<div class="mainWrap">
	<div class="search">
		<br/>
		<br/>
	</div> <!-- search End -->

	<div class="content">
		<!-- Board/add -->
		<table class="board" align="center" cellpadding="5">
		<tr>
			<td width="120"> No. </td>
			<td width="500"> 제   목  </td>
			<td width="200"> 작성일 </td>
		</tr>
		<tr>
			<td colspan="4"><hr color="white"/></td>
		</tr>
		<tr>
			<td><%=idx%></td>
			<td><%=title%></td>
			<td><%=regdate%></td>
		</tr>

		</table>		
	</div> <!-- content End -->
	
</div> <!-- mainWrap End -->

<div class="footWrap">
	
</div> <!-- footWrap End -->

</body>
</html>