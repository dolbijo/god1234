<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<html>
<head>
    	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    	<meta name="description" content="" />
    	<meta name="author" content="" />
    	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
</head>
	 
<body>
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
        			<a href="resumeform.action?memberId=${ loginuser.memberId }">이력서 등록</a>
        			</c:when>
        			<c:otherwise>
        			<a href="resumeview.action?memberId=${ loginuser.memberId }">이력서 보러가기</a>
        			</c:otherwise>
        			</c:choose>
        			<br />
        			<a href="applicationlist.action?memberId=${ loginuser.memberId }">지원현황</a>
					<br />
        			<a href="recommendationlist.action">맞춤알바정보</a>
        		</div>
        	</div>
        </div>
    </div>
    </section>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>









