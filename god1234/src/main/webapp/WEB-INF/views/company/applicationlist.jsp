<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
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
		
		
		<div style="padding-top:25px;text-align:center">


			<table border="1" style="width:600px" align="center">
				<tr style="background-color:orange;height:30px">
					<th style="width:50px">지원 날짜</th>
					<th style="width:400px">지원자 아이디</th>
					<th></th>
				</tr>
				
				<c:forEach var="application" items="${ applications }">
				<tr style="height:30px">
					<th style="width:50px"><fmt:formatDate value="${application.applicationRegdate }" type="date"/></th>
					<th style="width:400px">${application.memberId }</th>
					<th><a href="updateischeck.action?applicationNo=${ application.applicationNo}&memberId=${application.memberId }">[이력서 열람하기]<!-- 1. application테이블의 ischeck업데이트 / 2. select resume를 memberId로 하기 --></th>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
			
		
		
		</div>

		
	</div>	
		
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>


