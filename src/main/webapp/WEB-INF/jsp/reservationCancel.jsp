<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
</header>

<main role="main" class="container">

    <h3 class="blog-post-title">예약 취소</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <form name="cancelForm" id="cancelForm" method="post">
        <div style="margin-bottom: 50px;">
            <h5><span class="oi oi-chevron-right"></span>&nbsp;취소 신청 내용</h5>
            <table class="table">
                <tr>
                    <th class="title" scope="col">ID</th>
                    <th class="title" scope="col">성명</th>
                    <th class="title" scope="col">산행일자</th>
                    <th class="title" scope="col">산행지</th>
                    <th class="title" scope="col">좌석번호</th>
                    <th class="title" scope="col">예약금액</th>
                </tr>
                <tr>
                    <td scope="col">${reservInfo.user.userId}</td>
                    <td scope="col">${reservInfo.user.userName}</td>
                    <td scope="col">${reservInfo.travel.departureDate}</td>
                    <td scope="col">${reservInfo.travel.destination}</td>
                    <td scope="col">${reservInfo.seatNum}</td>
                    <td scope="col">
                        <%--${reservInfo.busSeatCnt * reservInfo.travel.price}--%>
                            <fmt:formatNumber value="${reservInfo.busSeatCnt * reservInfo.travel.price}" pattern="##,###" />
                            원
                    </td>
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
                    <th scope="col"><input type="text" class="form-control" name="refundBankName" id="refundBankName"/></th>
                    <th class="title" scope="col">입금계좌</th>
                    <th scope="col"><input type="text" class="form-control" name="refundBankNo" id="refundBankNo" /></th>
                    <th class="title" scope="col">예금주명</th>
                    <th scope="col"><input type="text" class="form-control" name="refundBankAccount" id="refundBankAccount" /></th>
                </tr>

            </table>
        </div>
        <input type="hidden" name="userId" value="${userId}"/>
        <input type="hidden" name="userName" value="${userName}"/>
        <input type="hidden" name="userPhone" value="${phoneNum}"/>
        <input type="hidden" name="reserv_id" value="${reserv_id}"/>
    </form>

    <div style="margin-top: 23px;left: 45%;position: absolute;">
        <button type="button" class="btn btn-danger" onclick="cancelReserv()">취소하기</button>
        <button type="button" class="btn btn-success" onclick="back()">취소안하기</button>
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
<script src="/asset/js/html5shiv.js"></script>
<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>
    function back(){
        var form = $("#cancelForm");
        $(form).attr("action","/reservation/cancelReserv");
        form.submit();
    }
    function cancelReserv(){
        if(!confirm('취소하시겠습니까'))
            return;
        var form = $("#cancelForm");
        $(form).attr("action","/reservation/cancelApply");
        form.submit();
    }
</script>
</body>
</html>