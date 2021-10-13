<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Sidebars · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
  </head>
  <body>
    
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="geo-fill" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z"/>
  </symbol>
 </svg>

<main >
		<h1 class="visually-hidden">Sidebars</h1>
		<div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 345px; height: 770px">
		
		
		
		
			<jsp:include page="../main/login.jsp" flush="false"/>	
		
		
			
		
		
			<!-- <div class="loginForm">
				<div class="card" style="width: 18rem; text-align: center">
				  <div class="card-body">
					  <div class="mb-3 row">
					    <label class="col-sm-2 col-form-label">ID</label>
					    <div class="col-sm-10">
					      <input type="text"  class="form-control" id="staticEmail">
					    </div>
					  </div>
					  <div class="mb-3 row">
					    <label class="col-sm-2 col-form-label">PW</label>
					    <div class="col-sm-10">
					      <input type="password"  class="form-control" id="staticEmail">
					    </div>
					  </div>
				    <a href="#" class="btn btn-primary" style="font-size:15px">로그인</a>
				    <a href="http://localhost:8081/base/main/register" class="btn btn-success" style="font-size:15px" >회원가입</a>
				  </div>
				</div>
			</div> -->
			
			
			
			
			
			
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li><a href="https://www.naver.com" class="nav-link text-white">
						<svg class="bi me-2" width="16" height="16">
							<use xlink:href="#speedometer2" /></svg> 네이버
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi me-2" width="16" height="16">
							<use xlink:href="#table" /></svg> no create page
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi me-2" width="16" height="16">
							<use xlink:href="#grid" /></svg> no create page
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi me-2" width="16" height="16">
							<use xlink:href="#people-circle" /></svg> no create page
				</a></li>
			</ul>
			<hr>
		</div>

	</main>


  </body>
</html>
