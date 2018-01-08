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
    <style>
        #list table tr td {
            text-align: center;
        }
    </style>
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

    <h3 class="blog-post-title">내 예약 확인하기</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div id="list">
        <table class="table">
            <tr>
                <th class="title" scope="col">산행일자</th>
                <th class="title" scope="col">산행지</th>
                <th class="title" scope="col">예약현황</th>
                <th class="title" scope="col">입금자명</th>
                <th class="title" scope="col">입금금액</th>
                <th class="title" scope="col">좌석번호</th>
                <th class="title" scope="col">예약취소</th>
            </tr>
            <c:forEach var="list" items="${travels}">
            <tr>
                    <%--<td scope="col">홍길동</td>--%>
                <td scope="col"><c:out value="${list.travel.departureDate}"/></td>
                <td scope="col"><c:out value="${list.travel.destination}"/></td>
                <td scope="col">
                    <c:choose>
                        <c:when test="${list.reservStatus eq '0'}">
                            예약대기 (입금대기)
                        </c:when>
                        <c:when test="${list.reservStatus eq '1'}">
                            예약완료 (입금완료)
                        </c:when>
                        <c:when test="${list.reservStatus eq '2'}">
                            취소요청
                        </c:when>
                        <c:when test="${list.reservStatus eq '4'}">
                            취소완료
                        </c:when>
                        <c:otherwise>
                            비정상 상태
                        </c:otherwise>
                    </c:choose>
                </td>
                <td scope="col"><c:out value="${list.bankAccountName}"/></td>
                <td scope="col">
                    <fmt:formatNumber value="${list.busSeatCnt * list.travel.price}" pattern="#,###" />원
                </td>
                <td scope="col"><c:out value="${list.seatNum}"/></td>
                <td scope="col"><button type="button" class="btn btn-danger" onclick="reserv(${list.seq})">취소하기</button></td>
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
    function reserv(travel_id){
        window.location = "/reservation/bus?travel_id="+travel_id;
    }
</script>
</body>
</html>