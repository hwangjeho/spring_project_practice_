<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="./resources/css/index.css">
</head>
<body>
<div id="container">
	<div id="title">
		<div id="logo">
			
		</div>
	</div>
	<div id="loginArea">
		<c:choose>
			<c:when test="${sessionScope.u_id ne null }">
				<h1>${sessionScope.u_id }님 환영합니다.</h1><br>
				<button type="button" class="btn btn-success" id="logout">로그아웃</button>
			</c:when>
			<c:otherwise>
				<form action="./login.do" method="post" onsubmit="return login()">
					<input type="text" name="u_id" placeholder="아이디를 입력하세요" style="color: black;" id="id"><br>
					<input type="password" name="u_pw" placeholder="비밀번호를 입력하세요" style="color: black;" id="pw"><br>
					<button onclick="openJoin()" type="button" class="btn btn-success">가입하기</button>
					<button type="submit" class="btn btn-success">로그인</button>
				</form>
			</c:otherwise>
		</c:choose>
		<div>
			<dialog id="joinDialog">
			<form action="./join.do" method="post">
				<table>
					<tr>
					<td>이름</td>
					<td><input type="text" placeholder="이름을 입력하세요" required="required" name="u_name"></td>
					</tr>
					<tr>
					<td>아이디</td>
					<td><input type="text" placeholder="아이디를 입력하세요" required="required" name="u_id"></td>
					</tr>
					<tr>
					<td>비밀번호</td>
					<td><input type="password" placeholder="비밀번호를 입력하세요" required="required" name="u_pw"></td>
					</tr>
					<tr>
					<td>이메일</td>
					<td><input type="email" placeholder="이메일를 입력하세요" required="required" name="u_email"></td>
					</tr>
				</table>
				<button  class="btn btn-success" type="submit">가입하기</button>
			</form>
			</dialog>	
		</div>	
	</div>
	<div id="menu">
	<c:import url="./menu.jsp"></c:import>
	</div>
	<div id="main">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">글제목</th>
						<th scope="col">쓴날짜</th>
						<th scope="col">글쓴이</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="b">
					<tr>
						<th scope="row">${b.b_no }</th>
						<td>${b.b_title }</td>
						<td>${b.b_date }</td>
						<td>${b.u_id }</td>
						<td>${b.b_count }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	<div id="footer">
	
	</div>
</div>
<script type="text/javascript">
function openJoin(){
	var dialog = document.getElementById("joinDialog");
	dialog.showModal();
}
$("#logout").click(function(){
	alert("클릭했습니다.");
	location.href="./logout.do";
});
</script>
</body>
</html>