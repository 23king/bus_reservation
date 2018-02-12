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
    <link rel="stylesheet" href="/webjars/jquery-ui/1.12.1/jquery-ui.css">
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

    <h3 class="blog-post-title">산행 리스트</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div id="search">
        <table class="table">
            <tr>
                <th class="title" scope="col">산행일자</th>
                <td scope="col">
                    <input type="text" class="form-control" id="departureDate" name="departureDate" value="${param.departureDate}"/>
                </td>
                <td scope="col">
                    <button type="button" class="btn btn-primary" onclick="searchTravel()">검색</button>
                </td>
            </tr>
        </table>
    </div>
    <div id="list">
        <table class="table">
            <tr>
                <th class="title" scope="col">산행일자</th>
                <th class="title" scope="col">산행지</th>
                <th class="title" scope="col">예약현황</th>
                <th class="title" scope="col">예약</th>
            </tr>
            <c:forEach var="list" items="${travels}">
            <tr>
                    <%--<td scope="col">홍길동</td>--%>

                <td scope="col">
                    <c:out value="${list.departureDate}"/>
                    <%--<fmt:formatDate value="${list.departureDate}" var="dateFmt" pattern="yyyy-MM-dd HH:mm"/>--%>
                </td>
                <td scope="col"><c:out value="${list.destination}"/></td>
                <td scope="col">
                    <p style="font-color:red">예약 좌석 : ${list.reserved_cnt}</p>
                    <p style="font-color:blue">예약 가능좌석 : ${list.bookable_cnt}</p>
                </td>
                <td scope="col">
                    <c:if test="${list.bookable_cnt>0}">
                    <button type="button" class="btn btn-danger" onclick="reserv(${list.seq})">예약</button>
                    </c:if>
                    <c:if test="${list.bookable_cnt == 0}">
                        <p style="font-color:red">예약마감</p>
                    </c:if>
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
<script src="/webjars/jquery-ui/1.12.1/jquery-ui.js"></script>
<script>
    function reserv(travel_id){
        window.location = "/reservation/bus?travel_id="+travel_id;
    }
    function searchTravel(){
        var departureDate = $("#departureDate").val();
        if(departureDate == ''){
            alert('산행일자를 선택해주세요.');
            return;
        }
        window.location = "/reservation/busList?departureDate="+departureDate;
    }
    $( function() {
        $( "#departureDate" ).datepicker({
            dateFormat: 'yy.mm.dd',
            closeText: '닫기',
            prevText: '이전달',
            nextText: '다음달',
            currentText: '오늘',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            yearSuffix: '년',
            showMonthAfterYear: true
        });
    });
</script>
</body>
</html>