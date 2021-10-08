<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${member.user_name} Info</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<script type="text/javascript">
	function goListBtn() {
		location.href="http://localhost:8081/base/baseMain/main"
	}
	function updateBtn() {
		location.href="http://localhost:8081/base/main/userInfoUpdate"
	}
</script>

<style type="text/css">
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
	}
</style>
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<div class="card">
	  <ul class="list-group list-group-flush">
	    <li class="list-group-item ">
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">id</span>
			  <input type="text" class="form-control" placeholder="UserID" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_id}" readonly="readonly">
			</div>
	   <%--  <li class="list-group-item">
	    	<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">@</span>
			  <input type="text" class="form-control" placeholder="UserPW" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_pw}" readonly="readonly">
			</div>
	    </li> --%>
	   	    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">name</span>
			  <input type="text" class="form-control" placeholder="UserName" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_name}" readonly="readonly">
			</div>
		    <div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">email</span>
			  <input type="text" class="form-control" placeholder="UserEmail" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_email}" readonly="readonly">
			</div>	    
	    </li>
	  </ul>
	</div>
	<div class="btnG">
		<button type="button" class="btn btn-warning" onclick="updateBtn()">Update</button>
		<button type="button" class="btn btn-primary" onclick="goListBtn()">GO List</button>
	</div>
</body>
</html>