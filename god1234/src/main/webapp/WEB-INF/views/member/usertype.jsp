<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <title>알바몽 회원가입</title>

<!-- 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/pages/signin.css" rel="stylesheet" type="text/css"> -->

</head>
<body>

	<div id="pageContainer">
		
	<c:import url="/WEB-INF/views/include/header.jsp" />
		
	<table border="1" bordercolor="navy" bgcolor="skyblue" width="500" height="100">
		<tr>
		<td><a href="/dolbi/member/register.action?usertype=individual">개인 회원 가입</td>
		<td><a href="/dolbi/member/register.action?usertype=company">기업 회원 가입</td>
    	</tr>
	</table>
 
	</div>

</body>
</html>