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
    <link rel="stylesheet" href="webjars/jquery-ui/1.12.1/jquery-ui.css">
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

    <h3 class="blog-post-title">배차 예약 자세히</h3>
    <p>산수산악회 배차 등록 시스템입니다.</p>
    <hr>
    <div style="margin-bottom: 50px;">
        <h5><span class="oi oi-chevron-right"></span>&nbsp;예약 신청 내용</h5>
        <table class="table">
            <tr>
                <th class="title" scope="col">성명</th>
                <th class="title" scope="col">좌석번호</th>
                <th class="title" scope="col">예약금액</th>
                <th class="title" scope="col">예약상태</th>
            </tr>
            <tr>
                <td scope="col">홍길동</td>
                <td scope="col">1호차 1,2,3</td>
                <td scope="col">93,000</td>
                <td scope="col">
                    <select class="custom-select">
                        <option value="1" selected>입금 대기중</option>
                        <option value="2">예약 완료</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td scope="col">홍길동</td>
                <td scope="col">1호차 1,2,3</td>
                <td scope="col">93,000</td>
                <td scope="col">예약완료</td>
            </tr>

        </table>
    </div>

    <div>
        <h5><span class="oi oi-chevron-right"></span>&nbsp;환불 신청 내용</h5>
        <table class="table">
            <tr>
                <th class="title" scope="col">성명</th>
                <th class="title" scope="col">좌석번호</th>
                <th class="title" scope="col">환불금액</th>
                <th class="title" scope="col">환불은행</th>
                <th class="title" scope="col">환불계좌</th>
                <th class="title" scope="col">예금주</th>
                <th class="title" scope="col">환불상태</th>
            </tr>
            <tr>
                <td scope="col">홍길동</td>
                <td scope="col">1호차 1,2,3</td>
                <td scope="col">93,000원</td>
                <td scope="col">신한은행</td>
                <td scope="col">111-111-11231</td>
                <td scope="col">홍길동</td>
                <td scope="col">
                    <select class="custom-select">
                        <option value="1" selected>환불신청</option>
                        <option value="2">환불 진행중</option>
                        <option value="3">환불 완료</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td scope="col">홍길동</td>
                <td scope="col">1호차 1,2,3</td>
                <td scope="col">93,000원</td>
                <td scope="col">신한은행</td>
                <td scope="col">111-111-11231</td>
                <td scope="col">홍길동</td>
                <td scope="col">환불 완료</td>
            </tr>
        </table>
    </div>

    <div class="bus_area">
        <div class="seat">
            <table style="border:#a7a7a7 solid 0px;cellpadding:0;cellspacing:0;">
                <tbody>
                <tr>
                    <td style="width:29px;" rowspan="2"><img src="./asset/img/seat/seat_st01.gif" style="width:26px;height:53px;border:2px;"></td>
                    <td></td>
                    <td class="td_2">
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_4">4</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_8">8</div>
                    </td>
                    <td>
                        <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="1_12">12</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_16">16</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_20">20</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_24">24</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_28">28</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_32">32</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_36">36</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_40">40</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_44">44</div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td_2">
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_3">3</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_7">7</div>
                    </td>
                    <td>
                        <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="1_11">11</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_15">15</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_19">19</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id,false, this);" id="1_23">23</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_27">27</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_31">31</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_35">35</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_39">39</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_43">43</div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td_2"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_45">45</div>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2"><img src="./asset/img/seat/seat_st02.gif" style="width:24px;height:49px;"></td>

                    <td></td>
                    <td class="td_2">
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_2">2</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_6">6</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, true, this);" id="1_10">10</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_14">14</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_18">18</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_22">22</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_26">26</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_30">30</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_34">34</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_38">38</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_42">42</div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_1">1</div>
                    </td>
                    <td class="td_2">
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_5">5</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, true, this);" id="1_9">9</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_13">13</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_17">17</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_21">21</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_25">25</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_29">29</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_33">33</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_37">37</div>
                    </td>
                    <td>
                        <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1_41">41</div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="bus_info">
            <table class="bus_info" style="width:618px;border:0;cellspacing:0;cellpadding:0;margin-top:5px;">
                <tbody><tr>
                    <td style="width:12px;text-align:left;">&nbsp;</td>
                    <td style="width:31px;text-align:left;"><img src="./asset/img/seat/seat_box_01.gif" width="16" height="16"></td>
                    <td style="width:80px;text-align:left;" class="set01">선택가능</td>
                    <td style="width:31px;text-align:left;"><img src="./asset/img/seat/seat_box_02.gif" alt="" width="16" height="16"></td>
                    <td style="width:55px;text-align:left;"><strong class="set01">예약완료</strong></td>
                    <%--<td style="width:31px;text-align:left;"><img src="./asset/img/seat/seat_box_03.gif" alt="" width="16" height="16"></td>--%>
                    <%--<td style="width:80px;text-align:left;"><strong class="set01">2인전용</strong></td>--%>
                    <%--<td style="width:32px;text-align:left;"><img src="./asset/img/seat/seat_box_04.gif" alt="" width="16" height="16"></td>--%>
                    <%--<td style="width:217px;text-align:left;"><strong class="set01">선택불가</strong></td>--%>
                    <%--<td style="width:26px;">&nbsp;</td>--%>
                </tr>
                </tbody>
            </table>
        </div>
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
<script src="webjars/jquery-ui/1.12.1/jquery-ui.js"></script>
<script>
</script>
</body>
</html>