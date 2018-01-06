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
    <style>
        #list table tr td {
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="/WEB-INF/jsp/include/top.jsp"/>
</header>

<main role="main" class="container">

    <h3 class="blog-post-title">취소 리스트</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div id="list">
        <table class="table">
            <tr>
                <th class="title" scope="col">Id</th>
                <th class="title" scope="col">성명</th>
                <th class="title" scope="col">예약일자</th>
                <th class="title" scope="col">입금자명</th>
                <th class="title" scope="col">산행일자</th>
                <th class="title" scope="col">산행지</th>
                <th class="title" scope="col">취소일자</th>
                <th class="title" scope="col">입금은행</th>
                <th class="title" scope="col">입금계좌</th>
                <th class="title" scope="col">지급상태</th>
            </tr>
            <c:forEach var="list" items="${refundList}">
            <tr>
                <td scope="col">${list.reservationDetail.user.userId}</td>
                <td scope="col">${list.reservationDetail.user.userName}</td>
                <td scope="col">${list.reservationDetail.createDate}</td>
                <td scope="col">${list.reservationDetail.bankAccountName}</td>
                <td scope="col">${list.travel.departureDate}</td>
                <td scope="col">${list.travel.destination}</td>
                <td scope="col">${list.refundRequestDate}</td>
                <td scope="col">${list.refundBankName}</td>
                <td scope="col">${list.refundBankNo}</td>
                <td scope="col">
                    <c:if test="${list.refundStatus == 1}">환불 신청</c:if>
                    <c:if test="${list.refundStatus == 2}">환불 진행중</c:if>
                    <c:if test="${list.refundStatus == 3}">환불 완료</c:if>
                </td>
            </tr>
            </c:forEach>
        </table>
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
</script>
</body>
</html>