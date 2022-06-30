<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./resources/css/index.css">
</head>
<body>
<div id="container">
	<div id="title">
		<div id="logo">
			<input type="text" name="search" placeholder="검색어를 입력하세요" id="search">
			<button class="btn btn-success">검색</button>
		</div>
	</div>
	<div id="loginArea">
		<form action="./login.do" method="post" onsubmit="return login()">
			<input type="text" name="id" placeholder="아이디를 입력하세요" style="color: black;" id="id"><br>
			<input type="password" name="pw" placeholder="비밀번호를 입력하세요" style="color: black;" id="pw"><br>
			<button onclick="openJoin()" type="button" class="btn btn-success">가입하기</button>
			<button type="submit" class="btn btn-success">로그인</button>
		</form>
		<div>
			<dialog id="joinDialog">
				<table>
					<tr>
					<td>이름</td>
					<td><input type="text" placeholder="이름을 입력하세요" required="required"></td>
					</tr>
					<tr>
					<td>아이디</td>
					<td><input type="text" placeholder="아이디를 입력하세요" required="required"></td>
					</tr>
					<tr>
					<td>비밀번호</td>
					<td><input type="password" placeholder="비밀번호를 입력하세요" required="required"></td>
					</tr>
					<tr>
					<td>이메일</td>
					<td><input type="email" placeholder="이메일를 입력하세요" required="required"></td>
					</tr>
				</table>
				<button onclick="closeJoin()" class="btn btn-success">가입하기</button>
			</dialog>	
		</div>	
	</div>
	<div id="menu">
	
	</div>
	<div id="search">
	
	</div>
	<div id="main">
	
	</div>
	<div id="footer">
	
	</div>
</div>
<script type="text/javascript">
function openJoin(){
	var dialog = document.getElementById("joinDialog");
	dialog.showModal();
}
function closeJoin(){
	var dialog = document.getElementById("joinDialog");
	dialog.close();	
}
</script>
</body>
</html>