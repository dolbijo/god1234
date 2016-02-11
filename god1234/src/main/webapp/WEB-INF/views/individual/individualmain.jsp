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
    <div class="content-wrapper">
    	<div class="container">
			<div class="row">
    			<div class="col-md-12">
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
    			
    		<div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    
                        <div class="panel-body" style="padding-bottom:30px">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tbody>
                                    	<tr>
                                            <td>아이디</td>
        									<td colspan="2">${ loginuser.memberId }</td>
                                        </tr>
                                        <tr>
                                            <td>이름</td>
        									<td>${ loginuser.memberName }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>성별</td>
        									<td>${ member.gender }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>생년월일</td>
        									<td>${ member.age }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>전화번호</td>
        									<td>${ loginuser.phoneNo }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>이메일</td>
        									<td>${ loginuser.email }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>주소</td>
        									<td>${ loginuser.memberAddress }</td>
        									<td>[수정]</td>
                                        </tr>
                                        <tr>
                                            <td>선호하는 직종</td>
        									<td>
        									<c:forEach var="likedcategory" items="${likedcategorylist }">
        										${likedcategory.categoryName } | 
        									</c:forEach>
        									</td>
        									<td>[수정]</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        
                    </div>
                    <!-- End  Hover Rows  -->
    			</div>
    			<div style="padding-left: 760px;">
    			<c:choose>
            	<c:when test="${ resume eq '0' }">
            	<a href="resumeform.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;이력서 등록 </a>&nbsp;
            	</c:when>
        		<c:otherwise>
        		<a href="resumeview.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;이력서 관리 </a>&nbsp;
        		</c:otherwise>
        		</c:choose>
    			<a href="applicationlist.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;지원현황 </a>&nbsp;
    			<a href="recommendationlist.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;맞춤알바정보 </a>&nbsp;
    		</div>
    		</div>
    	</div>
    </div>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>









