<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>사용자 정보</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
	<link rel="Stylesheet" href="/dolbi/resources/styles/input.css" />		
</head>
<body>

	<div id="pageContainer">
		
		<c:import url="/WEB-INF/views/include/header.jsp" />
	<table border="1" bordercolor="navy" bgcolor="skyblue" width="500" height="100">
		<tr>
		<td><a href="/dolbi/member/list.action?usertype=individual">개인 회원 관리</td>
		<td><a href="/dolbi/member/list.action?usertype=campany">기업 회원 관리</td>
		<td><a href="#">회원 통계</td>
    	</tr>
	</table>

	</div>

</body>
</html>