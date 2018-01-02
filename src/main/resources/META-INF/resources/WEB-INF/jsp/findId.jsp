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
                <h3 class="blog-post-title">로그인</h3>
                <p>산수산악회 버스 예약 시스템입니다.</p>
                <hr>
                <div>
                    <table class="table">
                        <tr>
                            <th class="title" scope="row">성명</th>
                            <td colspan="3"><input type="text" id="userName" class="form-control" /></td>
                        </tr>
                        <tr>
                            <th class="title" scope="row">휴대전화</th>
                            <td colspan="3"><input type="text" class="form-control" id="phoneNum" placeholder="-를 포함한 전체 휴대전화 번호를 입력하세요" onchange="checkNum(this.id)"/></td>
                        </tr>

                    </table>
                    <div style="margin-top: 23px;left: 50%;position: absolute;">
                        <button type="button" class="btn btn-success" onclick="submit()">아이디 찾기</button>
                    </div>
                </div>

            </div><!-- /.blog-post -->
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
    function checkNum(id) {
        var x = document.getElementById(id).value;

        var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
        if( !regExp.test(x)) {
            alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");

            document.getElementById(id).value = "";
            document.getElementById(id).focus();
        }

    }


    function submit() {
        var userName= document.getElementById("userName").value;
        var phoneNum= document.getElementById("phoneNum").value;

        if(userName==="") {
            alert("성명을 입력하세요");
            document.getElementById("userName").focus();
            return false;
        }

        console.log(userName, phoneNum);
    }
</script>
</body>
</html>