<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %> <!-- 한글 깨짐 방지를 위한 초반 작업 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>양티 홈페이지</title>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<%
  		String userID = null;
  	if (session.getAttribute("userID") != null) {
  		userID = (String) session.getAttribute("userID");
  	}
  	%>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">양티</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="main.jsp">메인 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Ytbbs.jsp">게시판</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="versionnote.jsp">버전 노트</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="gallery.jsp">갤러리</a>
      </li>
    </ul>
  </div>
  <%
  	if(userID ==null) {
  %>
        <div class= "nav-item dropdown" style="float: right;">
    
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          접속하기
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Ytlogin.jsp">로그인</a>
          <a class="dropdown-item" href="Ytjoin.jsp">회원가입</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </div>
      </nav>
  <%
  	} else {
  %>
        <div class= "nav-item dropdown" style="float: right;">
    
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          회원관리
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="YtlogoutAction.jsp">로그아웃</a>
        </div>
      </div>
      </nav>
	<% 
  	}
	%>
  
  	<div class="container" style="position: absolute; left: 200px; width:500px">
  	<h1>갤러리들</h1>
  	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel"> <!-- 이미지 슬라이드 -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/KakaoTalk_20210217_203812646.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/KakaoTalk_20210217_203927826.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/KakaoTalk_20210224_082724341.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
	</div>
	</div>

 



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
  </body>
</html>