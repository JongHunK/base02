<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function mainBtn() {
		location.href="http://localhost:8081/base/baseMain/main";
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	
	<form action="update" method="POST">
		<input hidden="" name="board_no" value="${base.board_no }">
		<div class="insertCard">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Title</label>
			<input name="title" type="text" value="${base.title}" class="form-control" id="exampleFormControlInput1" placeholder="Title">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Content</label>
			<textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="3" style="height: 400px">${base.content}</textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Writer</label>
			<input name="writer" type="text" value="${base.writer}" class="form-control" id="exampleFormControlInput1" readonly="readonly" placeholder="Writer">
		</div>
		<div class="boot">
			<button type="submit" class="btn btn-primary btn-lg" formaction="update" formmethod="POST">Update</button>
			<button type="button" class="btn btn-secondary btn-lg" onclick="mainBtn()">List</button>
		</div>
		</div>
		
	</form>

</body>
</html>