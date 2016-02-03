<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" type="text/css">
	<link href="<%=cp%>/resources/bootstrap/css/pages/signin.css" rel="stylesheet" type="text/css">
	
</head>
<body>

    <div id="pageContainer">

    	<c:import url="/WEB-INF/views/include/header.jsp" />
        
        <div id="content">
        	<br /><br />
        	<div style='text-align:center'>
        		[&nbsp;<a href="register.action">사용자 등록</a>&nbsp;]
        	</div>
        	<br /><br />        	
        	<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>아이디</td>
        			<td>이름</td>
        			<td>주소</td>
        			<td>연락처</td>
        			<td>이메일</td>
        		</tr>        	
        	<c:forEach var="member" items="${ members }">
        		<tr style="height:30px">
        			<td>
        				<c:url value="viewindi.action" var="viewUrl">
        					<c:param name="memberid" value="${ member.memberId }" />
        				</c:url>
        				<a href="${ viewUrl }">${ member.memberId }</a>
        			</td>
        			<td>${ member.memberName }</td>
        			<td>${ member.memberAddress }</td>
        			<td>${ member.phoneNo }</td>
        			<td>${ member.email }</td>
        		</tr>
        	</c:forEach>
        	</table>
        	
        </div>
    </div>
    
</body>
</html>









