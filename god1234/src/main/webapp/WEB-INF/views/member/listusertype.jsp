<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>사용자 정보</title>
	
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
	<table border="1" bordercolor="navy" bgcolor="skyblue" width="500" height="100">
		<tr>
		<td><a href="/dolbi/member/listindi.action">개인 회원 관리</td>
		<td><a href="/dolbi/member/listcom.action">기업 회원 관리</td>
		<td><a href="/dolbi/stats/stats.action">회원 통계</td>
    	</tr>
	</table>

	</div>

</body>
</html>