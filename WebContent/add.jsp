<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="main_stylesheet.css" rel="stylesheet" type="text/css"/>
<link href="add_stylesheet.css" rel="stylesheet" type="text/css"/>
<title> Board_JaewanKim/add </title>
	<script>
		function formCheck() {
			var title = document.forms[0].title.value;
			var content = document.forms[0].content.value;
			var password = document.forms[0].password.value;

		    if (title == null || title == ""){		// 내용이 null인지 확인
		        alert('제목을 입력하세요');
		        document.forms[0].title.focus();
		        return false;
		    }		    
		     
		    if (content == null ||  content == ""){
		        alert('한줄 소개를 입력하세요'); 
		        document.forms[0].content.focus();
		        return false;
		    }
		    
		    if (password == null ||  password == ""){
		        alert('비밀번호를 입력하세요'); 
		        document.forms[0].password.focus();
		        return false;
		    }
		}
	</script>
</head>
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
		<form action="insert.jsp" method="post" onsubmit="return formCheck();">
			<table class="board" align="center" cellpadding="5">
			<tr>
				<td> 제   목 : </td>
				<td><input name="title" size="50" maxlength="100"></td>
			</tr>
			<tr>
				<td>해시태그</td>
			</tr>
			<tr>
				<td>한줄소개</td>
				<td>
					<textarea name="content" rows="5" cols="48"></textarea>
				</td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="password" size="50" maxlength="12"></td>
			</tr>	
			<tr>
				<td colspan="2"><center><button type="submit">Go</button></center></td>
			</tr>
			</table>
		</form>
		
	</div> <!-- content End -->
</div> <!-- mainWrap End -->

<div class="footWrap">
	
</div> <!-- footWrap End -->

</body>
</html>