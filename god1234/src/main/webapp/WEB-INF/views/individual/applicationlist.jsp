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
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    	<meta name="description" content="" />
    	<meta name="author" content="" />
    	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
</head>
	 
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
        
        <div id="content">
        <table border="1">
        	<tr>
        		<th>지원 날짜</th>
        		<th>지원 공고</th>
        		<th>담당자 연람유무</th>
        	</tr>
        	<c:forEach var="application" items="${applications }">
        	<tr>
        		<td>${application.applicationRegdate }</td>
        		<td>${application.jobboardNo }</td>
        		<td>${application.isCheck }</td>
        	</tr>
        	</c:forEach>
        </table>
        </div>
    </div>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
