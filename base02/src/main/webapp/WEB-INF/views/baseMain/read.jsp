<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
	.btnRA{
		text-align: center;
		margin-top : 30px;
	}#cardRead{
      	border: 0.5px solid gray;
      	width: 80%;
      	margin: 0% 10% 0% 10%;
    }textarea{
    	height: 500px;
    }
</style>
<script type="text/javascript">
	function updateBtn() {
		location.href="http://localhost:8081/base/baseMain/update?bno=${base.board_no}";
	}
</script>
<title>read content</title>
</head>
<body>
<form>
	<div>
		<jsp:include page="../template/header.jsp" flush="false" />
	</div>
	
	<div class="card text-center" id="cardRead">
		<div class="card-header">${base.title}</div>
		<div class="card-body">
			<h5 class="card-title">${base.writer}</h5>
			<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea">${base.content}</textarea>
		</div>
		<div class="card-footer text-muted">
			<div>Date/View</div>
			<div>${base.created_at}/[${base.view_count}]</div>
		</div>
	</div>
		<div class="btnRA">
		<button class="btn btn-primary" type="button" onclick="location.href='http://localhost:8081/base/baseMain/update?bno=${base.board_no }'">수정</button>
		<button class="btn btn-danger" type="submit" formaction="remove?bno=${base.board_no }" formmethod="post">삭제</button>
		<button class="btn btn-secondary" type="submit" formaction="main" formmethod="get">목록</button>
		</div>
</form>
</body>
</html>