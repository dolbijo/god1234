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
        
        <div id="content" style="padding-bottom: 100px;">
        	<br /><br />
        	<div style='text-align:center'>
        		[&nbsp;<a href="register.action">사용자 등록</a>&nbsp;]
        	</div>
        	<br /><br />        	
        	<table border="1" align="center" width="700px" style="color:slategrey">
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
        				<c:url value="viewcom.action" var="viewUrl">
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
    <c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>









