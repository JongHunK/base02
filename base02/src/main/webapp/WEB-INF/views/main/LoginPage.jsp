<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<script type="text/javascript">
		function goListBtn() {
			location.href="http://localhost:8081/base/baseMain/main"
		}
		function insertUser() {
			location.href="http://localhost:8081/base/main/register"
		}
	</script>
	<style>
		.card{
			width : 30%;
			margin: 0% 35% 0% 35%;
		}.input-group-text{
			width : 15%;
			font-weight: 900;
		}.btnG{
			margin-top:1%;
			text-align: center;
		}.mb-3{
			margin-top:3%; 
		}.userInfo{
			color : white;
			font-weight: bold;
			width: 90px;
		}
	</style>
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<c:if test="${member == null }">
	<form action="LoginPage" method="post" autocomplete="off">
		<div class="card">
			<ul class="list-group list-group-flush">
				<li class="list-group-item ">
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">ID</span> 
						<input type="text" class="form-control" placeholder="UserID" aria-label="Username" aria-describedby="basic-addon1" name="user_id">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">PW</span> 
						<input type="password" class="form-control" placeholder="UserPW" aria-label="Username" aria-describedby="basic-addon1" name="user_pw">
					</div>
				</li>
			</ul>
		</div>
		<div class="btnG">
			<button type="submit" class="btn btn-primary userInfo">로그인</button>
			<button type="button" class="btn btn-success userInfo" onclick="insertUser()">회원가입</button>
			<button type="button" class="btn btn-secondary userInfo" onclick="goListBtn()">홈</button>
		</div>
	</form>
	</c:if>
	<c:if test="${msg==false }">
		<script type="text/javascript">
			alert("아이디 or 비밀번호를 확인해주세요");
		</script>
	</c:if>
</body>
</html>