<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <h3 class="blog-post-title">산행 리스트 관리</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div id="search">
        <form id="searchReserv" name="searchReserv">
            <input type="hidden" name="reservSeq" id="reservSeq" value=""/>
            <p><label for="reservDate">예약일자</label> : <input type="text" id="reservDate" name="reservDate"/></p>
            <p><label for="departureDate">산행일자</label> : <input type="text" id="departureDate" name="departureDate"/></p>
            <p><label for="departureDate">산행지역</label> : <input type="text" id="destination" name="destination"/></p>
            <p><label for="departureDate">예약자이름</label> : <input type="text" id="userName" name="userName"/></p>
            <p><label for="departureDate">입금자명</label> : <input type="text" id="bankAccountName" name="bankAccountName"/></p>
            <buton type="button" onclick="search()">검색</buton>
        </form>
    </div>
    <div id="list">
        <table class="table">
            <tr>
                <th class="title" scope="col">ID</th>
                <th class="title" scope="col">산행일자</th>
                <th class="title" scope="col">산행지</th>
                <th class="title" scope="col">입금자명</th>
                <th class="title" scope="col">예약금액</th>
                <th class="title" scope="col">좌석번호</th>
                <th class="title" scope="col">예약상태</th>
                <%--<th class="title" scope="col">자세히</th>--%>
            </tr>
            ${reservList}
            <c:forEach var="list" items="${reservList}">
            <tr>
                <%--<td scope="col">${list.user.userId}</td>--%>
                <%--<td scope="col">${list.user.userName}</td>--%>
                <%--<td scope="col">${list.travel.departureDate}</td>--%>
                <%--<td scope="col">${list.travel.destination}</td>--%>
                <%--<td scope="col">${list.busSeatNo}</td>--%>
                <%--<td scope="col">${list.reservStatus}</td>--%>
                <%--<td scope="col"><button type="button" class="btn btn-danger" onClick="reservDetail(${list.seq})">자세히</button></td>--%>
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
//    function reservDetail(seq){
//        var searchForm = $("#searchReserv");
//        searchForm.action="/admin/reservDetail";
//        $("#reservSeq").val(seq);
//        searchForm.submit()
//    }
</script>
</body>
</html>