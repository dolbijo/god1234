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
        	
        <input type="button" value="진행중인 공고" style="font-size: 30px;width: 200pt; height: 300pt; onclick="location.href='#' ">
        <input type="button" value="마감된 공고" style="font-size: 30px;width: 200pt; height: 300pt; onclick="location.href='#' ">		
        </div>
    </div>
    
</body>
</html>









