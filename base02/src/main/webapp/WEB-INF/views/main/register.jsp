<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$("#createBtn").on("click", function(){
			if($("#user_id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#user_id").focus();
				return false;
			}
			if($("#user_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#user_pw").focus();
				return false;
			}
			if($("#user_name").val()==""){
				alert("성명을 입력해주세요.");
				$("#user_name").focus();
				return false;
			}
			
			var pw = document.getElementsById("user_pw");
			var pwCh = document.getElementsById("user_pw_ch");
			if (pw != pwCh) {
				document.getElementsById("user_pw_ch").className = "test";
			}
		});
		
		
		if (${idInKorea != null}) {
			alert("${idInKorea}");
		}
		if (${idLengthErr != null}) {
			alert("${idLengthErr}");
		}
		if (${pwCh != null}) {
			alert("${pwCh}");
		}
		
		
		
		
		if (${success != null}) {
			alert("${success}");
		}
		
		
		
		
		
	}) 
	
	
	/* function registerBtn() {
		var frm = $("#createUser");
         if ($(frm).find("input[name=Title]").val() == "") {
            alert("제목을 입력해 주세요.");
            $(frm).find("input[name=Title]").focus();
            return false;
        }
		if($(frm).find("#Contents").val() == "<p><br></p>") {
			alert("내용을 입력해 주세요.");
			return false;
		} 
		
        $.ajax({
            type: "POST",
            url: "/main/register", 
            dataType: 'json',
            data: $("#createUser").serialize(),
            success: function (data) {
                if (data.isSuccess == true) {
                	goListPage();
                }
                else {
                    alert("dataErr");
                    goListPage();
                }
            }
        });

        return false;
    }
	 */
	
	
	
	function goListPage() {
		location.href = "http://localhost:8081/base/baseMain/main"
	}
	
	
	function idCheckBtn() {
		
	} 
	 
	
</script>
<style type="text/css">

	.card{
		margin: 10% 40% 0% 40%;
	}.register-box-msg{
		text-align: center;
		font-size  : 1.5em;
		font-weight: bold;
	}.regBtn{
		text-align: center;
	}.test{
		color:red;
	}

</style>
<meta charset="UTF-8">
<title>회원가입</title>
 <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
	<div>
		<jsp:include page="../template/header.jsp" flush="false"/>
	</div>
	<div class="card">
		<div class="card-body register-card-body">
			<p class="register-box-msg">회원가입</p>
			
			<form id="createUser" action="" method="post" autocomplete="off">
				<div class="input-group mb-3">
					<input type="text" name="user_id" id="user_id" class="form-control" placeholder="ID" aria-label="Recipient's username" aria-describedby="button-addon2">
					
					<button class="btn btn-outline-secondary" type="button" onclick="idCheckBtn()" id="button-addon2">Check</button>
					
				</div>
				<div class="input-group mb-3">
					<input type="text" name="user_name" id="user_name" class="form-control" placeholder="이름">
				</div>
				<div class="input-group mb-3">								
					<input type="text" name="user_email" class="form-control" placeholder="이메일">
				</div>
				<div class="input-group mb-3">
					<input type="password" name="user_pw" id="user_pw" class="form-control" placeholder="비밀번호">
				</div>
				<div class="input-group mb-3">
					<input type="password" name="user_pw_ch" id="user_pw_ch" class="form-control" placeholder="비밀번호 확인">
				</div>
				<div class="d-grid gap-2 col-6 mx-auto">
					<button class="btn btn-primary" type="submit"  id="createBtn" >create In!</button>
					<button class="btn btn-secondary" type="button" onclick="goListPage()">Main</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>