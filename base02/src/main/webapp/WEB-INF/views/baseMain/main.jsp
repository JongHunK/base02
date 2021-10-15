<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		if (${success != null}) {
			alert("${success}");
		}
		if (${updateU != null}) {
			alert("${updateU}");
		}
	})
	
</script>

<style type="text/css">
	  #list{
		width: 80%;
		float: right;
		padding-right : 30px;
	}#side{
		float:left;
		width: 20%;
		padding: 0px 15px 0px 15px;
		height: 100%;
	}
</style>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>

	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<div id="side" ><jsp:include page="../template/sideMenu.jsp" flush="false"/></div>
	<div id="list" ><jsp:include page="listAll.jsp" flush="false"/></div>

</body>
</html>