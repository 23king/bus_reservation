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

    <div class="row">

        <div class="col-sm-10 blog-main">
            <div class="blog-post">
                <h3 class="blog-post-title">버스 예약</h3>
                <p>산수산악회 버스 예약 시스템입니다.</p>
                <hr>
                <div class="bus_area">
                    <div class="seat">
                        <table style="border:#a7a7a7 solid 0px;cellpadding:0;cellspacing:0;">
                            <tbody>
                            <tr>
                                <td style="width:29px;" rowspan="2"><img src="./asset/img/seat/seat_st01.gif" style="width:26px;height:53px;border:2px;"></td>
                                <td></td>
                                <td class="td_2">
                                    <div class="seat_3" onclick="setSeat41(1, this.id, false, this);" id="4">4</div>
                                </td>
                                <td>
                                    <div class="seat_3" onclick="setSeat41(1, this.id, false, this);" id="8">8</div>
                                </td>
                                <td>
                                    <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="12">12</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="16">16</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="20">20</div>
                                </td>
                                <td>
                                    <div class="seat_3" onclick="setSeat41(1, this.id, false, this);" id="24">24</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="28">28</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="32">32</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="36">36</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="40">40</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="44">44</div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="td_2">
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="3">3</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="7">7</div>
                                </td>
                                <td>
                                    <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="11">11</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="15">15</div>
                                </td>
                                <td>
                                    <div class="seat_3" onclick="setSeat41(1, this.id, false, this);" id="19">19</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id,false, this);" id="23">23</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="27">27</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="31">31</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="35">35</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="39">39</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="43">43</div>
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
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="45">45</div>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2"><img src="./asset/img/seat/seat_st02.gif" style="width:24px;height:49px;"></td>

                                <td></td>
                                <td class="td_2">
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="2">2</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="6">6</div>
                                </td>
                                <td>
                                    <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="10">10</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="14">14</div>
                                </td>
                                <td>
                                    <div class="seat_3" onclick="setSeat41(1, this.id, false, this);" id="18">18</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="22">22</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="26">26</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="30">30</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="34">34</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="38">38</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="42">42</div>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="1">1</div>
                                </td>
                                <td class="td_2">
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="5">5</div>
                                </td>
                                <td>
                                    <div class="seat_2" onclick="setSeat41(1, this.id, true, this);" id="9">9</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="13">13</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="17">17</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="21">21</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="25">25</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="29">29</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="33">33</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="37">37</div>
                                </td>
                                <td>
                                    <div class="seat_1" onclick="setSeat41(1, this.id, false, this);" id="41">41</div>
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
                            <td style="width:55px;text-align:left;"><strong class="set01">선택</strong></td>
                            <td style="width:31px;text-align:left;"><img src="./asset/img/seat/seat_box_03.gif" alt="" width="16" height="16"></td>
                            <td style="width:80px;text-align:left;"><strong class="set01">2인전용</strong></td>
                            <td style="width:32px;text-align:left;"><img src="./asset/img/seat/seat_box_04.gif" alt="" width="16" height="16"></td>
                            <td style="width:217px;text-align:left;"><strong class="set01">선택불가</strong></td>
                            <td style="width:26px;">&nbsp;</td>
                        </tr>
                        </tbody>
                    </table>
                    <p>*일부 실제 좌석배치와 다를 수 있습니다.</p>
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
<script src="./asset/js/html5shiv.js"></script>
<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>
    var list =[];
    function setSeat41(busNum, seatNum, multiFlag) {
        var seatEl = document.getElementById(seatNum);
        if(seatEl.className === "seat_3") {
            return ;
        } else if(seatEl.className === "seat_1") {
            seatEl.className = "seat_4";
            list.push(parseInt(seatNum));
        } else if(seatEl.className === "seat_2" && multiFlag == true) {
            var seatNum2 = (seatNum % 2 == 0)?parseInt(seatNum)-1 : parseInt(seatNum)+1;

            seatEl.className = "seat_4";
            document.getElementById(seatNum2).className = "seat_4";

            list.push(parseInt(seatNum));
            list.push(parseInt(seatNum2));
        } else if(seatEl.className === "seat_4"){
            if(multiFlag == true) {
                var seatNum2 = (seatNum % 2 == 0)?parseInt(seatNum)-1 : parseInt(seatNum)+1;

                seatEl.className = "seat_2";
                document.getElementById(seatNum2).className = "seat_2";
            } else {
                seatEl.className = "seat_1";
            }

            list.splice(list.indexOf(parseInt(seatNum)),1);
            list.splice(list.indexOf(parseInt(seatNum2)),1);
        }

        console.log(list);
        //== "seat_3";

    }
</script>
</body>
</html>