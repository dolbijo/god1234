<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
</head>
<body>

    <div id="pageContainer">

    	<c:import url="/WEB-INF/views/include/header.jsp" />
        
        <div id="content">
        	
        	<a href="resumeview.action">이력서 등록 /수정</a>
        	<a href="applicationlist.action">지원현황</a>
        	<a href="recommendationlist.action">맞춤알바정보</a>
        	
        </div>
    </div>
    
</body>
</html>









