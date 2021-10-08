<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	
	

</script>
<style type="text/css">
	#subTitle{
		font-weight: bold;
	}#writeButton{
		text-align: center;
	}.btn{
		width: 35%;
	}
</style>


<meta charset="UTF-8">
<title>JSP Title</title>
</head>
<body>
	<form>
	<table class="table table-hover">
		
		<colgroup>
		<col width="5%">
		<col width="15%">
		<col width="20%">
		<col width="*%">
		<col width="10%">
		<col width="15%">
		<col width="5%">
		</colgroup>
		
		
		<tr id="subTitle">
			<td>No</td>
			<td>Writer</td>
			<td>Title</td>
			<td>Content</td>
			<td >Date</td>
			<td>DEL.B</td>
			<td>[views]</td>
		</tr>
	<c:forEach items="${list}" var="base">
		<tr>
		<td>${base.board_no} <input hidden="" name="board_no" value="${base.board_no}"></td>
		<td>${base.writer}</td>
		<%-- <td><a class="btn btn-primary btn-sm" href='/base/baseMain/read?bno=${base.board_no}'>${base.title}</a> --%>
		
		
		<c:choose>
			<c:when test="${fn:length(base.title) gt 5}">
				<td><a class="btn btn-primary btn-sm" href='/base/baseMain/read?bno=${base.board_no}'><c:out value="${fn:substring(base.title, 0, 5)}"></c:out>...</a>
			</c:when>
			<c:otherwise>
				<td><a class="btn btn-primary btn-sm" href='/base/baseMain/read?bno=${base.board_no}'><c:out value="${base.title}"/></a>
			</c:otherwise>
		</c:choose>
		
		
		<c:choose>
			<c:when test="${fn:length(base.content) gt 26}">
				<td><c:out value="${fn:substring(base.content, 0, 26)}"></c:out>...
			</c:when>
			<c:otherwise>
				<td><c:out value="${base.content}"/>
			</c:otherwise>
		</c:choose>
		
		
		<td>${base.created_at}</td>
		<td><button class="btn btn-outline-danger"  type="submit" formaction="remove?bno=${base.board_no }" formmethod="post">DEL</button></td>
		<td>[ ${base.view_count } ]</td>
		</tr>
	</c:forEach>
		<tr>
			<td  id="writeButton"  colspan="7" ><a class="btn btn-primary" href="http://localhost:8081/base/baseMain/create">글쓰기</a>
		</tr>
	</table>
	</form>
</body>
</html>