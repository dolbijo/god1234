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
	<div class="content-wrapper">
    	<div class="container">
			<div class="row">
    			<div class="col-md-12">
    				<h4 class="page-head-line">${ loginuser.memberId }님기업페이지 </h4>
    			</div>
    		</div>
    		
			<div class="row">
				<table class="table table-hover" style="width:1000px;height:10px" align="center">
					<tr class="danger" style="height:30px;color:black;">
						<th>지원 날짜</th>
						<th>지원자 아이디</th>
						<th></th>
					</tr>
				
					<c:forEach var="application" items="${ applications }">
					<tr style="height:30px">
						<th><fmt:formatDate value="${application.applicationRegdate }" type="date"/></th>
						<th>${application.memberId }</th>
						<th><a href="updateischeck.action?applicationNo=${ application.applicationNo}&memberId=${application.memberId }" target="_blank" class="btn btn-info">이력서 열람하기</a></th>
					</tr>
					</c:forEach>
				
				</table>
				<br /><br /><br /><br />
			</div>
		</div>
	</div>	
		
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>


