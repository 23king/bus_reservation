<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <a class="nav-link active" href="#"><span class="oi oi-home" aria-hidden="true"></span>&nbsp;홈(예약, 취소안내)</a>
                <a class="nav-link" href="#"><span class="oi oi-person" aria-hidden="true"></span>&nbsp;예약하기</a>
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

    <div class="row">

        <div class="col-sm-10 blog-main">

            ${message}
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
<script src="./asset/js/html5shiv.js"></script>
<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</body>
</html>