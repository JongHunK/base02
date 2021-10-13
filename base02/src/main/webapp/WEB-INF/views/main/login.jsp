<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<style>
		.loginForm{
      	text-align: center;
      	margin:4% 0% 4% 4%;
      }.col-sm-2{
      	color : black;
      	font-size : 14px;
      }.userInfo{
      	color : black;
      	font-weight: 900;
      	
      }.userInfo{
      	text-align: left;
      }
	</style>
	<script type="text/javascript">
		function logoutBtn() {
			location.href="http://localhost:8081/base/main/logout"
		}
		function userInfoBtn() {
			location.href="http://localhost:8081/base/main/userInfo"
		}
		function insertUser() {
			location.href="http://localhost:8081/base/main/register"
		}
	</script>
<meta charset="UTF-8">
<title>JSP Title</title>
</head>
<body>


	<form action="/base/main/login" method="post" autocomplete="off">
	<c:if test="${member == null}">
		<div class="loginForm">
			<div class="card" style="width: 18rem; text-align: center">
			  <div class="card-body">
				  <div class="mb-3 row">
				    <label class="col-sm-2 col-form-label">ID</label>
				    <div class="col-sm-10">
				      <input type="text" name="user_id" class="form-control" id="staticEmail">
				    </div>
				  </div>
				  <div class="mb-3 row">
				    <label class="col-sm-2 col-form-label">PW</label>
				    <div class="col-sm-10">
				      <input type="password" name="user_pw" class="form-control" id="staticEmail">
				    </div>
				  </div>
			    <button type="submit" class="btn btn-primary" style="font-size:15px">로그인</button>
			    <!-- <a href="http://localhost:8081/base/main/register" class="btn btn-success" style="font-size:15px" >회원가입</a> -->
			    <button type="button" class="btn btn-success" style="font-size:15px" onclick="insertUser()">회원가입</button>
			  </div>
			</div>
		</div>
	</c:if>
	<c:if test="${member != null}">
		<div class="loginForm">
			<div class="card" style="width: 18rem; text-align: center">
			  <div class="card-body">
			  	
			  	
			  	<div class="userInfo">
			  		<p>ID : ${member.user_name}</p>
			  		<p>PW : ${member.user_email}</p>
			  	</div>
			  	<button type="button" class="btn btn-secondary  userInfo" onclick="logoutBtn()" style="font-size:15px">로그아웃</button>
			  	<button type="button" class="btn btn-warning userInfo" onclick="userInfoBtn()" style="font-size:15px">회원정보</button>
			  </div>
			</div>
		</div>
	</c:if>
	<c:if test="${msg==false }">
		<script type="text/javascript">
			alert("아이디 or 비밀번호를 확인해주세요");
		</script>
	</c:if>
	</form>
	
	
	
</body>
</html>