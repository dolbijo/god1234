<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<!-- BASICS -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Albamong</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/dolbi/sources/css/isotope.css" media="screen" />
<link rel="stylesheet"
	href="/dolbi/resources/js/fancybox/jquery.fancybox.css" type="text/css"
	media="screen" />
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
        					<td class="align-center">${ loginuser.memberId }님 기업페이지 입니다.</td>
        				</tr>
						<tr>	
							<tr>
								<td>기업명</td>
								<td>${ loginuser.memberName }</td>
							</tr>
							<tr>
        					<td>전화번호</td>
        					<td>&nbsp;${ loginuser.phoneNo }</td>
        					</tr>
        				</tr>
        				
        				<tr>
        					<td>이메일</td>
        					<td>${ loginuser.email }</td>
        				</tr>
        				<tr>	
        					<td>주소</td>
        					<td>${ loginuser.memberAddress }</td>
        				</tr>
        				
        			</table>

					
            		
        			<a href="ingsearch.action">진행중인 공고</a>
        			
        			
        			<a href="endsearch.action">마감된 공고</a>
        			
        			
						<!-- <input type="button" value="진행중인 공고"
							style="font-size: 15px; width: 100pt; height: 100pt;"
							location.href='ingsearch.action'"> 
						<input type="button" value="마감된 공고"
							style="font-size: 15px; width: 100pt; height: 100pt;"
							location.href='endsearch.action'"> -->
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>









