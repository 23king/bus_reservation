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
            <h2>
                산수산악회 좌석예약 홈페이지에 오신걸 환영합니다
            </h2>
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">- 서비스안내 -</h4>
                <hr>
                <p class="mb-0">
                    <button type="button" class="btn btn-light"> 예약/취소/환불안내</button>
                    <button type="button" class="btn btn-light"> 좌석예약하기</button>
                    <button type="button" class="btn btn-light"> 예약조회하기</button>
                    <button type="button" class="btn btn-light"> 예약취소하기</button>
                </p>
            </div>

            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">- 서비스 방법- </h4>
                <hr>
                <p class="mb-0">[이용방법] 좌석예약 홈페이지는 카페 해당산행지에서 “좌석신청하기”를 클릭후 사용하시면 됩니다.</p>
                <p class="mb-0">[예약조회] 최근3개월간 산행신청내역을 보실수 있습니다.</p>
                <p class="mb-0">[예약취소] 상단메뉴 “예약조회/취소”를 클릭 후 하시면 됩니다.</p>
                <p class="mb-0">[산행변경] 예약취소 후 다시 입금 및 좌석예약을 하시면 됩니다.</p>
            </div>

            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">- 필독!! 예약/취소/변경/환불 상세 안내 -</h4>
                <hr>
                <div>
                    <h5><span style="color: #26a53d;">[필독] 예약/취소/변경/환불 안내</span></h5>
                    <p class="mb-0" style="color:#ef932f">1.좌석예약방법(회원 직접 지정)</p>
                    <p class="mb-0" style="text-indent:10px">
                        [카페]해당산행지-> [공지]산행지안내 및 신청하기-> [중간위치]좌석신청하기 클릭-> 좌석번호 지정-> 을 하시면 좌석이 완료됩니다.
                    </p>
                    <p class="mb-0" style="color:#ef932f">2.반드시 입금하신 후 좌석을 지정하시기를 당부 드립니다.</p>
                    <p class="mb-0" style="text-indent:10px">
                        산악회에서 1일 3회(09시,15시,21시) 입금 확인하며, 미입금 확인시 취소 처리 됩니다.
                    </p>
                    <p class="mb-0" style="color:#ef932f">3.좌석지정시 입금자명 유의사항</p>
                    <p class="mb-0" style="text-indent:10px">
                        좌석지정시 입금자명과 은행입금시 입금자명이 상이하여, 운영자가 동일인 판단이 어려운 경우 취소처리 될수 있으니 이점 유념하시어 지정 및 입금 바랍니다.
                    </p>
                    <p class="mb-0" style="color:#ef932f">4.취소안내</p>
                    <p class="mb-0" style="text-indent:10px">
                        [카페]해당산행지-> [공지]산행지안내 및 신청하기-> [중간위치]좌석신청하기 클릭-> <span style="font-weight:bold">예약조회/취소하기</span>-> 취소산행지 선택 을 하시면 산행취소가 완료 됩니다.
                    </p>
                    <p class="mb-0" style="color:#ef932f">5.변경안내</p>
                    <p class="mb-0" style="text-indent:10px">
                        신청하신 산행지를 취소하신 후  변경하실 산행지를 [좌석예약방법]에 따라 신청하시면 됩니다.
                    </p>
                    <p class="mb-0" style="text-indent:10px">
                        단, 인원이 저조하여 산악회에서 산행을 취소하는 경우에는, <span style="color:#ef932f">010-5337-9088</span> 또는 <span style="color:#ef932f">010-4739-1374</span>로 산행지 변경 신청을 하여 주시면 됩니다.
                    </p>
                    <p class="mb-0" style="color:#ef932f">6.환불안내</p>
                    <p class="mb-0" style="text-indent:10px">- 산행출발 24시간이후 취소시 : 90%환불</p>
                    <p class="mb-0" style="text-indent:10px">-산행출발 24시간이후 타 산행지로 변경시 : 80%환불</p>
                    <p class="mb-0" style="text-indent:10px">-산행출발 24시간 이내 취소,무단불참,지각불참시 : 0%환불</p>
                    <p class="mb-0" style="text-indent:10px">-산악회에서 산행취소시 : 전액환불</p>
                    <p class="mb-0" style="text-indent:10px">-단, 특별산행,기획산행,해외산행 등 해당산행지에 별도로 환불규정을 공지한 경우에는 공지한 규정을 따릅니다.</p>
                    <p class="mb-0" style="text-indent:10px">-산행비 환불은 해당산행 행사가 종료된 다음주 초에 입금하여 드립니다.</p>
                </div>
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
</body>
</html>