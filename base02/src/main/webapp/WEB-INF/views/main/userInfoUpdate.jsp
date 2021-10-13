<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${member.user_name} Info update</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<script type="text/javascript">
	function goListBtn() {
		location.href="http://localhost:8081/base/baseMain/main"
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
	}.userInfo{
		font-weight: bold;
	}
</style>
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<form action="userInfoUpdate" method="post">
	<div class="card">
		<ul class="list-group list-group-flush">
			<li class="list-group-item ">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">id</span> 
					<input type="text" class="form-control" placeholder="UserID" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_id}" name ="user_id" readonly="readonly">
				</div> 
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">name</span> 
					<input type="text" class="form-control" placeholder="UserName" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_name}" name ="user_name">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">email</span> 
					<input type="text" class="form-control" placeholder="UserEmail" aria-label="Username" aria-describedby="basic-addon1" value="${member.user_email}" name ="user_email">
				</div>
			</li>
		</ul>
	</div>
	<div class="btnG">
		<button type="submit" class="btn btn-warning userInfo">Update</button>
		<button type="button" class="btn btn-primary userInfo" onclick="goListBtn()">GO List</button>
	</div>
	</form>
</body>
</html>