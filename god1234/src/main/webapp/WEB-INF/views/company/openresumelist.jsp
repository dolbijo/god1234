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
    				<h4 class="page-head-line">..뭐라해야해........... </h4>
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
        									<th>이력서 제목</th>
        									<th>회원 아이디</th>
        								</tr>
        							</thead>
        							<tbody>
        							
        								<c:forEach var="resume" items="${resumes }">
        								
	                                		<tr>
	        									<th><a href="updatereadcount.action?memberId=${resume.memberId }">${resume.resumeTitle }</a></th>
	        									<th>${resume.memberId }</th>
	        								</tr>
        							
        								</c:forEach>
        								
        							</tbody>
        							
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