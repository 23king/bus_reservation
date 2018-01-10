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
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/asset/open-iconic-master/font/css/open-iconic-bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="/asset/css/common.css">
</head>
<body>
<header>
    <jsp:include page="/WEB-INF/jsp/include/top.jsp"/>

    <!--<div class="blog-header">-->
    <!--<div class="container">-->
    <!--<h1 class="blog-title">The Bootstrap Blog</h1>-->
    <!--<p class="lead blog-description">An example blog template built with Bootstrap.</p>-->
    <!--</div>-->
    <!--</div>-->
</header>

<main role="main" class="container">

    <div class="row">

        <div class="col-sm-10 blog-main">
            <div class="blog-post">
                <h3 class="blog-post-title">좌석 예약 완료</h3>
                <p>예약 내역은 다음과 같습니다.</p>
                <hr>
                <div>
                    <table class="table">
                        <tr>
                            <th class="title" scope="col">산행일자</th>
                            <td scope="col">${data.date}</td>
                        </tr>
                        <tr>
                            <th class="title" scope="row">산행지역</th>
                            <td colspan="3">${data.destination}</td>
                        </tr>
                        <tr>
                            <th class="title" scope="row">산행금액</th>
                            <td colspan="3">${data.price}원</td>
                        </tr>
                        <tr>
                            <th class="title" scope="row">입금자명</th>
                            <td colspan="3">${data.accountName}</td>
                        </tr>
                        <tr>
                            <th class="title" scope="row">좌석번호</th>
                            <td colspan="3">${data.seatNum}</td>
                        </tr>

                    </table>

                </div>
                <div style="margin-top: 23px;left: 50%;position: absolute;">
                    <button type="button" class="btn btn-success" onclick="location.href='/'">홈</button>
                    <button type="button" class="btn btn-primary" onclick="location.href='/reservation/findReservations'>나의 예약 확인</button>
                </div>
        </div><!-- /.blog-main -->


    </div><!-- /.row -->

</main>

<!--<footer class="blog-footer">-->
<!--<p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>-->
<!--<p>-->
<!--<a href="#">Back to top</a>-->
<!--</p>-->
<!--</footer>-->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/asset/js/html5shiv.js"></script>
<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>