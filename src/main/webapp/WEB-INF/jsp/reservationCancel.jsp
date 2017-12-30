<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>산수산악회 산행 예약 시스템</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="webjars/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./asset/open-iconic-master/font/css/open-iconic-bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="./asset/css/common.css">
</head>
<body>
<header>
    <div class="blog-masthead">
        <div class="container">
            <nav class="nav">
                <a class="nav-link" href="#"><span class="oi oi-home" aria-hidden="true"></span>&nbsp;홈(예약, 취소안내)</a>
                <a class="nav-link active" href="#"><span class="oi oi-person" aria-hidden="true"></span>&nbsp;예약하기</a>
                <a class="nav-link" href="#"><span class="oi oi-person" aria-hidden="true"></span>&nbsp;예약조회</a>
                <a class="nav-link" href="#"><span class="oi oi-briefcase" title="icon home" aria-hidden="true"></span>&nbsp;산행취소하기</a>
                <a class="nav-link" href="#"><span class="oi oi-cog" title="icon home" aria-hidden="true"></span>&nbsp;아이디(ID)찾기</a>
                <a class="nav-link hidden" href="#"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 예약리스트 </a>
                <a class="nav-link hidden" href="#"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 취소리스트</a>
                <a class="nav-link hidden" href="#"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 회원정보</a>
                <a class="nav-link hidden" href="#"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 배차</a>
            </nav>
        </div>
    </div>

    <!--<div class="blog-header">-->
    <!--<div class="container">-->
    <!--<h1 class="blog-title">The Bootstrap Blog</h1>-->
    <!--<p class="lead blog-description">An example blog template built with Bootstrap.</p>-->
    <!--</div>-->
    <!--</div>-->
</header>

<main role="main" class="container">

    <h3 class="blog-post-title">예약 취소</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div style="margin-bottom: 50px;">
        <h5><span class="oi oi-chevron-right"></span>&nbsp;취소 신청 내용</h5>
        <table class="table">
            <tr>
                <th class="title" scope="col">성명</th>
                <th class="title" scope="col">취소일자</th>
                <th class="title" scope="col">산행일자</th>
                <th class="title" scope="col">산행지</th>
                <th class="title" scope="col">좌석번호</th>
                <th class="title" scope="col">예약금액</th>
            </tr>
            <tr>
                <th scope="col">홍길동</th>
                <th scope="col">2018.01.02(수)</th>
                <th scope="col">2018.01.02(수)</th>
                <th scope="col">지리산</th>
                <th scope="col">1호차 1,2,3</th>
                <th scope="col">93,000</th>
            </tr>

        </table>
    </div>

    <div>
        <h5><span class="oi oi-chevron-right"></span>&nbsp;환불 신청 내용</h5>
        <table class="table">
            <tr>
                <th class="title" scope="col">환불금액</th>
                <th scope="col" colspan="5">환불 규정에 따라 환불 금액이 처리됩니다.</th>
            </tr>
            <tr>
                <th class="title" scope="col">입금은행</th>
                <th scope="col"><input type="text" class="form-control" /></th>
                <th class="title" scope="col">입금계좌</th>
                <th scope="col"><input type="text" class="form-control" /></th>
                <th class="title" scope="col">예금주명</th>
                <th scope="col"><input type="text" class="form-control" /></th>
            </tr>

        </table>
    </div>

    <div style="margin-top: 23px;left: 45%;position: absolute;">
        <button type="button" class="btn btn-danger">취소하기</button>
        <button type="button" class="btn btn-success">취소안하기</button>
    </div>


</main>

<!--<footer class="blog-footer">-->
<!--<p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>-->
<!--<p>-->
<!--<a href="#">Back to top</a>-->
<!--</p>-->
<!--</footer>-->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="./asset/js/html5shiv.js"></script>
<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>