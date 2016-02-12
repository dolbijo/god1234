<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
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
					<h4 class="page-head-line">최신 알바 채용정보</h4>
				</div>
			</div>
           
			<div class="row">
			
				<c:forEach var="newjobboard" items="${newjobboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-one">
							<!-- 아이콘 하나 달아주기 -->
							<h4>${newjobboard.jobboardTitle } </h4>
							<h5>${newjobboard.memberName } </h5>
							<h5>
							<c:choose>
            					<c:when test="${ newjobboard.jobboardPayment eq 'permonth' }">
		            				월급
		            			</c:when>
				            	<c:when test="${ newjobboard.jobboardPayment eq 'perweek' }">
				            		주급
				            	</c:when>
				        		<c:otherwise>
				        			시급
				        		</c:otherwise>
		        			</c:choose>
					 		/ <fmt:formatNumber type="number" maxFractionDigits="3" value="${ newjobboard.jobboardSalary }" />원
							</h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">인기 알바 채용정보</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="popjobboard" items="${popjobboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-two">
							<!-- 아이콘 하나 달아주기 -->
							<h4>${popjobboard.jobboardTitle } </h4>
							<h5>${popjobboard.memberName } </h5>
							<h5>
							<c:choose>
            					<c:when test="${ popjobboard.jobboardPayment eq 'permonth' }">
		            				월급
		            			</c:when>
				            	<c:when test="${ popjobboard.jobboardPayment eq 'perweek' }">
				            		주급
				            	</c:when>
				        		<c:otherwise>
				        			시급
				        		</c:otherwise>
		        			</c:choose>
					 		/ <fmt:formatNumber type="number" maxFractionDigits="3" value="${ popjobboard.jobboardSalary }" />원
							</h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 지식나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albainfofreeboard" items="${albainfofreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-three">
							<h4>${albainfofreeboard.freeboardTitle } </h4>
							<h4>${albainfofreeboard.memberId } </h4>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">악덕 알바채용정보 나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albawarningfreeboard" items="${albawarningfreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-four">
							<h4>${albawarningfreeboard.freeboardTitle } </h4>
							<h4>${albawarningfreeboard.memberId } </h4>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 경험나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albaexpfreeboard" items="${albaexpfreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-five">
							<h4>${albaexpfreeboard.freeboardTitle } </h4>
							<h4>${albaexpfreeboard.memberId } </h4>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
           

	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>