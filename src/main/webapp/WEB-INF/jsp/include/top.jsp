<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<security:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin" />
<div class="blog-masthead">
    <div class="container">
        <nav class="nav">
            <a class="nav-link" href="/index"><span class="oi oi-home" aria-hidden="true"></span>&nbsp;홈(예약, 취소안내)</a>
            <a class="nav-link" href="/reservation/busList"><span class="oi oi-person" aria-hidden="true"></span>&nbsp;예약하기</a>
            <a class="nav-link" href="/reservation/findReservations"><span class="oi oi-person" aria-hidden="true"></span>&nbsp;예약조회/예약취소</a>
            <a class="nav-link" href="/findId"><span class="oi oi-cog" title="icon home" aria-hidden="true"></span>&nbsp;아이디(ID)찾기</a>
            <security:authorize access="!hasRole('ROLE_ADMIN')">
            <a class="nav-link" href="/admin/findReservList"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;ADMIN</a>
            </security:authorize>
            <security:authorize access="hasRole('ROLE_ADMIN')"><a class="nav-link" href="/logout"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;Logout</a>
            <a class="nav-link" href="/admin/findReservList"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 예약리스트 </a>
            <a class="nav-link" href="/admin/cancelReservList"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 취소리스트</a>
            <a class="nav-link" href="/admin/findUser"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 회원정보</a>
            <a class="nav-link" href="/admin/saveBusReservation"><span class="oi oi-cog" title="icon home" aria-hidden="false"></span>&nbsp;[ADMIN] 배차</a>
            </security:authorize>
        </nav>
    </div>
</div>