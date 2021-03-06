<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<style type="text/css">
	.insertCard{
		margin: 100px 200px 0px 200px;
	}.boot{
		float:right;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$("#createBtn").on("click", function(){
			if($("#title").val()==""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return false;
			}
			if($("#content").val()==""){
				alert("내용를 입력해주세요.");
				$("#content").focus();
				return false;
			}
			
		});
	}) 
	
	
	function mainBtn() {
		location.href="http://localhost:8081/base/baseMain/main";
	}
	
	
	
</script>
<meta charset="UTF-8">
<title>Write</title>
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<c:if test="${member != null }">
		<form action="create"  method="POST" class="insertCard">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Title</label>
				<input name="title" type="text" class="form-control" id="title" placeholder="Title">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">Content</label>
				<textarea name="content" class="form-control" id="content" rows="3" style="height: 400px"></textarea>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Writer</label>
				<input name="writer" type="text" class="form-control" id="writer" placeholder="Writer" readonly="readonly" value="${member.user_name }">
			</div>
			<div class="boot">
				<button type="submit" class="btn btn-primary btn-lg" name="createBtn">Create</button>
				<button type="button" class="btn btn-secondary btn-lg" onclick="mainBtn()">List</button>
			</div>
		</form>
	</c:if>
	<c:if test="${member == null }">
		<script type="text/javascript">
			alert("로그인후 이용이 가능합니다");
			location.href="http://localhost:8081/base/main/LoginPage";
		</script>
	</c:if>
</body>
</html>