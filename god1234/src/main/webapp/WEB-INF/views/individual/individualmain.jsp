<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<html>
<head>
		<!-- BASICS -->
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Albamong</title>
        <meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="/dolbi/sources/css/isotope.css" media="screen" />	
		<link rel="stylesheet" href="/dolbi/resources/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="/dolbi/resources/css/bootstrap.css">
		<link rel="stylesheet" href="/dolbi/resources/css/bootstrap-theme.css">
        <link rel="stylesheet" href="/dolbi/resources/css/style.css">
		<!-- skin -->
		<link rel="stylesheet" href="/dolbi/sources/skin/default.css">
</head>
<body>
	<section id="header" class="appear"></section>
   	<c:import url="/WEB-INF/views/include/header.jsp" />
        
    <section class="featured">
	<div class="container"> 
		<div class="row mar-bot40">
			<div class="col-md-6 col-md-offset-3">
				<div class="align-center">
        			<table border='0'>
        				<tr colspan='4'>
        					<td>${ loginuser.memberId }님 개인페이지 입니다.</td>
        				</tr>
        				
        				<tr>
        					<td>이름</td>
        					<td>${ loginuser.memberName }</td>
        					<td>전화번호</td>
        					<td>${ loginuser.phoneNo }</td>
        				</tr>
        				
        				<tr>
        					<td>이메일</td>
        					<td>${ loginuser.email }</td>
        					<td>주소</td>
        					<td>${ loginuser.memberAddress }</td>
        				</tr>
        				
        			</table>
        			
        			<c:choose>
            		<c:when test="${ resume eq '0' }">
        			<a href="resumeform.action">이력서 등록</a>
        			</c:when>
        			<c:otherwise>
        			<a href="resumeview.action">이력서 보러가기</a>
        			</c:otherwise>
        			</c:choose>
        			<br />
        			<a href="applicationlist.action">지원현황</a>
					<br />
        			<a href="recommendationlist.action">맞춤알바정보</a>
        		</div>
        	</div>
        </div>
    </div>
    </section>
</body>
</html>









