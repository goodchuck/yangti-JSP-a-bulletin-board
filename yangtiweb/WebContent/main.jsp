<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %> <!-- 한글 깨짐 방지를 위한 초반 작업 -->
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 101 템플릿</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="jumbotron">
  	<h1 class="display-4">양티의 개인 홈페이지</h1>
  	<p class="lead">이홈페이지는 포트폴리오용을 위한 홈페이지 연습용입니다.</p>
  	<hr class="my-4">
  	<p>2021 02 28 만들기 시작</p>
  	<a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
  	</div>
  	
  	<div class="container" style="position: absolute; left: 200px; width:500px">
  	<h1>내캐릭터 스펙</h1>
  	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel"> <!-- 이미지 슬라이드 -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/체이서배메-프레이_2021-02-26 17_57.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/잘할게여-프레이_2021-02-26 17_57.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/국밥시너지-프레이_2021-02-26 17_58.gif" class="d-block w-100" alt="...">
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



    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>