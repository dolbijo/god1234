<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>

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
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                	<thead>
                                		<tr>
        								<th>지원 날짜</th>
        								<th>지원 공고</th>
        								<th>담당자 열람유무</th>
        								<th>취소하기</th>
        								</tr>
        							</thead>
        							<c:forEach var="application" items="${applications }">
        							<tbody>
        								<tr>
        								<td><fmt:formatDate value="${application.applicationRegdate }" type="date"/></td>
        								<td>
        									${application.jobboardNo }
        									<a href="/dolbi/jobboard/view.action?jobboardNo=${application.jobboardNo }">${application.jobboardTitle }</a>
        								</td>
        								<td>
        								<c:choose>
        								<c:when test="${ application.isCheck eq 'false' }">
        									미열람
        								</c:when>
        								<c:otherwise>
        									열람
        								</c:otherwise>
        								</c:choose>
        								
        								</td>
        								<td>[<a href="deleteapplication.action?applicationNo=${application.applicationNo }&memberId=${ loginuser.memberId }">취소</a>]</td>
										</tr>
        							</tbody>
        							</c:forEach>
        						</table>
        					</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
