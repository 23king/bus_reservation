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

    <!--<div class="blog-header">-->
    <!--<div class="container">-->
    <!--<h1 class="blog-title">The Bootstrap Blog</h1>-->
    <!--<p class="lead blog-description">An example blog template built with Bootstrap.</p>-->
    <!--</div>-->
    <!--</div>-->
</header>

<main role="main" class="container">

    <h3 class="blog-post-title">버스 예약</h3>
    <p>산수산악회 버스 예약 시스템입니다.</p>
    <hr>
    <div>
        <table class="table">
            <tr>
                <th class="title" scope="col">산행일자</th>
                <td scope="col">${travelInfo.info.departureDate}</td>
                <th class="title" scope="col">산행지</th>
                <td scope="col">
                    ${travelInfo.info.destination}
                </td>
            </tr>
            <tr>
                <th class="title" scope="row">산행금액</th>
                <td scope="col"><fmt:formatNumber value="${travelInfo.info.price}" pattern="#,###" />원</td>
                <th class="title" scope="row">계좌번호</th>
                <td scope="col">${travelInfo.bankAccount}</td>
            </tr>
            <tr>
                <th class="title" scope="row">산행대장/차량</th>
                <td colspan="3">${travelInfo.info.leader}</td>
            </tr>
            <tr>
                <th class="title" rowspan="2" scope="row">안내사항</th>
                <td colspan="3">${travelInfo.info.notice1} </td>
            </tr>
            <tr>
                <td colspan="3">
                    ${travelInfo.info.notice2}
                </td>
            </tr>
        </table>
    </div>
    <%--<form method="post">--%>
        <input type="hidden" id="travel_id" value="${param.travel_id}"/>
        <input type="hidden" id="userId" value="${param.userId}"/>
        <input type="hidden" id="userName" value="${param.userName}"/>
        <input type="hidden" id="phoneNum" value="${param.phoneNum}"/>
        <c:forEach var="list" varStatus="status" items="${travelInfo.get('busInfo')}">
        <div class="bus_area">
            <div class="seat">
                <table style="border:#a7a7a7 solid 0px;cellpadding:0;cellspacing:0;">
                    <tbody>
                    <tr>
                        <td style="width:29px;" rowspan="2"><img src="/asset/img/seat/seat_st01.gif" style="width:26px;height:53px;border:2px;"></td>
                        <td></td>
                        <td class="td_2">
                            <div class="${list[3]}" onclick="setSeat41(${status.count}, this.id, ${list[3] eq 'seat_2'?true:false}, this);" id="${status.count}_4">4</div>
                        </td>
                        <td>
                            <div class="${list[7]}" onclick="setSeat41(${status.count}, this.id, ${list[7] eq 'seat_2'?true:false}, this);" id="${status.count}_8">8</div>
                        </td>
                        <td>
                            <div class="${list[11]}" onclick="setSeat41(${status.count}, this.id, ${list[11] eq 'seat_2'?true:false}, this);" id="${status.count}_12">12</div>
                        </td>
                        <td>
                            <div class="${list[15]}" onclick="setSeat41(${status.count}, this.id, ${list[15] eq 'seat_2'?true:false}, this);" id="${status.count}_16">16</div>
                        </td>
                        <td>
                            <div class="${list[19]}" onclick="setSeat41(${status.count}, this.id, ${list[19] eq 'seat_2'?true:false}, this);" id="${status.count}_20">20</div>
                        </td>
                        <td>
                            <div class="${list[23]}" onclick="setSeat41(${status.count}, this.id, ${list[23] eq 'seat_2'?true:false}, this);" id="${status.count}_24">24</div>
                        </td>
                        <td>
                            <div class="${list[27]}" onclick="setSeat41(${status.count}, this.id, ${list[27] eq 'seat_2'?true:false}, this);" id="${status.count}_28">28</div>
                        </td>
                        <td>
                            <div class="${list[31]}" onclick="setSeat41(${status.count}, this.id, ${list[31] eq 'seat_2'?true:false}, this);" id="${status.count}_32">32</div>
                        </td>
                        <td>
                            <div class="${list[35]}" onclick="setSeat41(${status.count}, this.id, ${list[35] eq 'seat_2'?true:false}, this);" id="${status.count}_36">36</div>
                        </td>
                        <td>
                            <div class="${list[39]}" onclick="setSeat41(${status.count}, this.id, ${list[39] eq 'seat_2'?true:false}, this);" id="${status.count}_40">40</div>
                        </td>
                        <td>
                            <div class="${list[43]}" onclick="setSeat41(${status.count}, this.id, ${list[43] eq 'seat_2'?true:false}, this);" id="${status.count}_44">44</div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="td_2">
                            <div class="${list[2]}" onclick="setSeat41(${status.count}, this.id, ${list[2] eq 'seat_2'?true:false}, this);" id="${status.count}_3">3</div>
                        </td>
                        <td>
                            <div class="${list[6]}" onclick="setSeat41(${status.count}, this.id, ${list[6] eq 'seat_2'?true:false}, this);" id="${status.count}_7">7</div>
                        </td>
                        <td>
                            <div class="${list[10]}" onclick="setSeat41(${status.count}, this.id, ${list[10] eq 'seat_2'?true:false}, this);" id="${status.count}_11">11</div>
                        </td>
                        <td>
                            <div class="${list[14]}" onclick="setSeat41(${status.count}, this.id, ${list[14] eq 'seat_2'?true:false}, this);" id="${status.count}_15">15</div>
                        </td>
                        <td>
                            <div class="${list[18]}" onclick="setSeat41(${status.count}, this.id, ${list[18] eq 'seat_2'?true:false}, this);" id="${status.count}_19">19</div>
                        </td>
                        <td>
                            <div class="${list[22]}" onclick="setSeat41(${status.count}, this.id, ${list[22] eq 'seat_2'?true:false}, this);" id="${status.count}_23">23</div>
                        </td>
                        <td>
                            <div class="${list[26]}" onclick="setSeat41(${status.count}, this.id, ${list[26] eq 'seat_2'?true:false}, this);" id="${status.count}_27">27</div>
                        </td>
                        <td>
                            <div class="${list[30]}" onclick="setSeat41(${status.count}, this.id, ${list[30] eq 'seat_2'?true:false}, this);" id="${status.count}_31">31</div>
                        </td>
                        <td>
                            <div class="${list[34]}" onclick="setSeat41(${status.count}, this.id, ${list[34] eq 'seat_2'?true:false}, this);" id="${status.count}_35">35</div>
                        </td>
                        <td>
                            <div class="${list[38]}" onclick="setSeat41(${status.count}, this.id, ${list[38] eq 'seat_2'?true:false}, this);" id="${status.count}_39">39</div>
                        </td>
                        <td>
                            <div class="${list[42]}" onclick="setSeat41(${status.count}, this.id, ${list[42] eq 'seat_2'?true:false}, this);" id="${status.count}_43">43</div>
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
                            <div class="${list[44]}" onclick="setSeat41(${status.count}, this.id, ${list[44] eq 'seat_2'?true:false}, this);" id="${status.count}_45">45</div>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2"><img src="/asset/img/seat/seat_st02.gif" style="width:24px;height:49px;"></td>

                        <td></td>
                        <td class="td_2">
                            <div class="${list[1]}" onclick="setSeat41(${status.count}, this.id, ${list[1] eq 'seat_2'?true:false}, this);" id="${status.count}_2">2</div>
                        </td>
                        <td>
                            <div class="${list[5]}" onclick="setSeat41(${status.count}, this.id, ${list[5] eq 'seat_2'?true:false}, this);" id="${status.count}_6">6</div>
                        </td>
                        <td>
                            <div class="${list[9]}" onclick="setSeat41(${status.count}, this.id, ${list[9] eq 'seat_2'?true:false}, this);" id="${status.count}_10">10</div>
                        </td>
                        <td>
                            <div class="${list[13]}" onclick="setSeat41(${status.count}, this.id, ${list[13] eq 'seat_2'?true:false}, this);" id="${status.count}_14">14</div>
                        </td>
                        <td>
                            <div class="${list[17]}" onclick="setSeat41(${status.count}, this.id, ${list[17] eq 'seat_2'?true:false}, this);" id="${status.count}_18">18</div>
                        </td>
                        <td>
                            <div class="${list[21]}" onclick="setSeat41(${status.count}, this.id, ${list[21] eq 'seat_2'?true:false}, this);" id="${status.count}_22">22</div>
                        </td>
                        <td>
                            <div class="${list[25]}" onclick="setSeat41(${status.count}, this.id, ${list[25] eq 'seat_2'?true:false}, this);" id="${status.count}_26">26</div>
                        </td>
                        <td>
                            <div class="${list[29]}" onclick="setSeat41(${status.count}, this.id, ${list[29] eq 'seat_2'?true:false}, this);" id="${status.count}_30">30</div>
                        </td>
                        <td>
                            <div class="${list[33]}" onclick="setSeat41(${status.count}, this.id, ${list[33] eq 'seat_2'?true:false}, this);" id="${status.count}_34">34</div>
                        </td>
                        <td>
                            <div class="${list[37]}" onclick="setSeat41(${status.count}, this.id, ${list[37] eq 'seat_2'?true:false}, this);" id="${status.count}_38">38</div>
                        </td>
                        <td>
                            <div class="${list[41]}" onclick="setSeat41(${status.count}, this.id, ${list[41] eq 'seat_2'?true:false}, this);" id="${status.count}_42">42</div>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <div class="${list[0]}" onclick="setSeat41(${status.count}, this.id, ${list[0] eq 'seat_2'?true:false}, this);" id="${status.count}_1">1</div>
                        </td>
                        <td class="td_2">
                            <div class="${list[4]}" onclick="setSeat41(${status.count}, this.id, ${list[4] eq 'seat_2'?true:false}, this);" id="${status.count}_5">5</div>
                        </td>
                        <td>
                            <div class="${list[8]}" onclick="setSeat41(${status.count}, this.id, ${list[8] eq 'seat_2'?true:false}, this);" id="${status.count}_9">9</div>
                        </td>
                        <td>
                            <div class="${list[12]}" onclick="setSeat41(${status.count}, this.id, ${list[12] eq 'seat_2'?true:false}, this);" id="${status.count}_13">13</div>
                        </td>
                        <td>
                            <div class="${list[16]}" onclick="setSeat41(${status.count}, this.id, ${list[16] eq 'seat_2'?true:false}, this);" id="${status.count}_17">17</div>
                        </td>
                        <td>
                            <div class="${list[20]}" onclick="setSeat41(${status.count}, this.id, ${list[20] eq 'seat_2'?true:false}, this);" id="${status.count}_21">21</div>
                        </td>
                        <td>
                            <div class="${list[24]}" onclick="setSeat41(${status.count}, this.id, ${list[24] eq 'seat_2'?true:false}, this);" id="${status.count}_25">25</div>
                        </td>
                        <td>
                            <div class="${list[28]}" onclick="setSeat41(${status.count}, this.id, ${list[28] eq 'seat_2'?true:false}, this);" id="${status.count}_29">29</div>
                        </td>
                        <td>
                            <div class="${list[32]}" onclick="setSeat41(${status.count}, this.id, ${list[32] eq 'seat_2'?true:false}, this);" id="${status.count}_33">33</div>
                        </td>
                        <td>
                            <div class="${list[36]}" onclick="setSeat41(${status.count}, this.id, ${list[36] eq 'seat_2'?true:false}, this);" id="${status.count}_37">37</div>
                        </td>
                        <td>
                            <div class="${list[40]}" onclick="setSeat41(${status.count}, this.id, ${list[40] eq 'seat_2'?true:false}, this);" id="${status.count}_41">41</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        </c:forEach>
        <div class="bus_info">
            <table class="bus_info" style="width:618px;border:0;cellspacing:0;cellpadding:0;margin-top:5px;">
                <tbody><tr>
                    <td style="width:12px;text-align:left;">&nbsp;</td>
                    <td style="width:31px;text-align:left;"><img src="/asset/img/seat/seat_box_01.gif" width="16" height="16"></td>
                    <td style="width:80px;text-align:left;" class="set01">선택가능</td>
                    <td style="width:31px;text-align:left;"><img src="/asset/img/seat/seat_box_02.gif" alt="" width="16" height="16"></td>
                    <td style="width:55px;text-align:left;"><strong class="set01">선택</strong></td>
                    <td style="width:31px;text-align:left;"><img src="/asset/img/seat/seat_box_03.gif" alt="" width="16" height="16"></td>
                    <td style="width:80px;text-align:left;"><strong class="set01">2인전용</strong></td>
                    <td style="width:32px;text-align:left;"><img src="/asset/img/seat/seat_box_04.gif" alt="" width="16" height="16"></td>
                    <td style="width:217px;text-align:left;"><strong class="set01">선택불가</strong></td>
                    <td style="width:26px;">&nbsp;</td>
                </tr>
                </tbody>
            </table>
            <p>*일부 실제 좌석배치와 다를 수 있습니다.</p>
        </div>
        <table class="table">
            <tr>
                <th class="title" scope="row">입금자명</th>
                <td colspan="3"><input type="text" class="form-control" id="accountName"/></td>
            </tr>

        </table>
        <div style="margin-top: 23px;left: 45%;position: absolute;">

            <button type="button" class="btn btn-success" onclick="submit()">예약하기</button>
        </div>
    <%--</form>--%>
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
    var list ={}, count =0;
    function setSeat41(busNum, seatNum, multiFlag) {
        list[busNum] = list[busNum] === undefined ? []: list[busNum];

        var seatEl = document.getElementById(seatNum);
        if(seatEl.className === "seat_3") {
            return ;
        } else if(seatEl.className === "seat_1") {
            seatEl.className = "seat_4";
            list[busNum].push(seatNum.split("_")[1]);
            count ++;
        } else if(seatEl.className === "seat_2" && multiFlag == true) {
            var seatNum2 = (parseInt(seatNum.split("_")[1]) % 2 == 0)?parseInt(seatNum.split("_")[1])-1 : parseInt(seatNum.split("_")[1])+1;

            seatEl.className = "seat_4";
            document.getElementById(busNum+"_"+seatNum2).className = "seat_4";

            list[busNum].push(seatNum.split("_")[1]);
            list[busNum].push(seatNum2.toString());
            count += 2;
        } else if(seatEl.className === "seat_4"){
            if(multiFlag == true) {
                var seatNum2 = (parseInt(seatNum.split("_")[1]) % 2 == 0)?parseInt(seatNum.split("_")[1])-1 : parseInt(seatNum.split("_")[1])+1;
                count --;

                seatEl.className = "seat_2";
                document.getElementById(busNum+"_"+seatNum2).className = "seat_2";
                list[busNum].splice(list[busNum].indexOf(seatNum2.toString()),1);
            } else {
                seatEl.className = "seat_1";
            }

            count --;
            list[busNum].splice(list[busNum].indexOf(seatNum.split("_")[1]),1);
        }
    }

    function submit() {
        var data = {
            travel_id : $("#travel_id").val(),
            userId: $("#userId").val(),
            userName : $("#userName").val(),
            phoneNum : $("#phoneNum").val(),
            selectCount : count,
            accountName: $("#accountName").val(),
            selectList : list
        };

        if(data.travel_id == "" || data.userId == ""
            || data.userName == "" || data.phoneNum == "") {
            alert("비정상적인 접근입니다.");
            location.href = "/index";
        } else if(data.accountName == "") {
            alert("입금자명이 입력되지 않았습니다");
            return false;
        } else if(data.selectList == {}) {
            alert("좌석이 선택되지 않았습니다");
            return false;
        }



        $.ajax({
            type: "POST",
            url: "/api/v1/reservation/seat",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: data,
            dataType: "json",
            success:function(result){
                alert("예약에 성공하였습니다");
                location.href="/reservation/complete?revc_id="+result.resrv_code;
            }
        });
    }


</script>
</body>
</html>