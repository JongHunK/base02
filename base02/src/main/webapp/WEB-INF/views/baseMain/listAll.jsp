<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	//이전 버튼 이벤트
	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/baseMain/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
  	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/baseMain/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/baseMain/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

	function readBtn(bno) {
		var readD="/base/baseMain/read?bno=";
		var url = readD+bno;
		location.href = url;
		
	}
	var list = document.getElementsByClassName("boardNo");
	for (var i = 1; i <= list.length; i++) {
	    list[i].innerHTML = i;
	}

</script>
<style type="text/css">
	#subTitle{
		font-weight: bold;
	}#writeButton{
		text-align: center;
	}.btn{
		width: 35%;
	}.pagination{
		justify-content: center;
	}.form-select{
		width: 100px
	}.searchBtn{
		text-align: right;
		margin-bottom: 1%;
	}.titleBtn{
		width: 75%;
	}.Search{
		width : 50px;
	}.noneContent{
		text-align: center;
		font-weight: bold;
		font-size: 50px
	}
	
	/*
	 출력은되나 페이지처리때문에 번호 초기화
	body {
        counter-reset: chapter 0;
    }.boardNo:before {
        counter-increment: chapter;
        content: counter(chapter) ". ";
    } */
    
    
</style>


<meta charset="UTF-8">
<title>JSP Title</title>
</head>
<body>
	<form action="" class="searchBtn">
	<div class="btn-group" role="group" aria-label="Basic example">
		<select class="" aria-label="Default select example">
		  <option selected>All</option>
		  <option value="1">작성자</option>
		  <option value="2">제목</option>    
		  <option value="3">내용</option>
		</select>
		<input type="text">
		<button type="button" class = "Search btn btn-primary btn-sm">test</button>
	</div>
	</form>
	
	
	<form>
	<table class="table table-hover">
		
		<colgroup>
		<col width="5%">
		<col width="10%">
		<col width="15%">
		<col width="*%">
		<col width="10%">
		<col width="5%">
		</colgroup>
		
		
		<tr id="subTitle">
			<td>No</td>
			<td>Writer</td>
			<td>Title</td>
			<td>Content</td>
			<td >Date</td>
			<td>[views]</td>
		</tr>
		
	<!-- 리스트 출력 -->	
	<c:if test="${pagination.listCnt != 0}">
	<c:forEach items="${listAll}" var="base">
		<tr>
		<td class="boardNo">
			${base.board_no}
			<input hidden="" name="board_no" value="${base.board_no}">
		</td>
		<td>${base.writer}</td>
		
		
		<%-- <td><a class="btn btn-primary btn-sm" href='/base/baseMain/read?bno=${base.board_no}'>${base.title}</a> --%>
		<c:choose>
			<c:when test="${fn:length(base.title) gt 8}">
				<td><a class="titleBtn btn btn-primary btn-sm" onclick="readBtn('${base.board_no}')"><c:out value="${fn:substring(base.title, 0, 8)}"></c:out>...</a>
			</c:when>
			<c:otherwise>
				<td><a class="titleBtn btn btn-primary btn-sm" onclick="readBtn('${base.board_no}')"><c:out value="${base.title}"/></a>
			</c:otherwise>
		</c:choose>
		
		
		<c:choose>
			<c:when test="${fn:length(base.content) gt 50}">
				<td><c:out value="${fn:substring(base.content, 0, 50)}"></c:out>...
			</c:when>
			<c:otherwise>
				<td><c:out value="${base.content}"/>
			</c:otherwise>
		</c:choose>
		
		
		<td>${base.created_at}</td>
		<%-- <td><button class="btn btn-outline-danger"  type="submit" formaction="remove?bno=${base.board_no }" formmethod="post">DEL</button></td> --%>
		<td>[ ${base.view_count } ]</td>
		</tr>
	</c:forEach >
	</c:if >
	<c:if test="${pagination.listCnt == 0 }">
			<tr><td class="noneContent" colspan="6">글이 없습니다</td></tr>
	</c:if>
		<tr>
			<td  id="writeButton"  colspan="7" ><a class="btn btn-primary" href="http://localhost:8081/base/baseMain/create">글쓰기</a>
		</tr>
	</table>
	</form>
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
				<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}','${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
			</c:if>
		</ul>
	</div>



</body>
</html>