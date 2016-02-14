<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
           
			<div class="row" align="center">
			
				<c:forEach var="newjobboard" items="${newjobboards }">
					<div class="col-md-3 col-sm-3 col-xs-6" style="width: 220px;">
						<div style="width: 220px; height:100px;border:2px groove #6051AF;text-align: center">
							<!-- 아이콘 하나 달아주기 -->
							<h4><b><a href="/dolbi/jobboard/updatecount.action?jobboardNo=${ newjobboard.jobboardNo }">
							
							<c:choose>
	           					<c:when test="${fn:length(newjobboard.jobboardTitle) > 12}">
	            					${fn:substring(newjobboard.jobboardTitle,0,11)}"/>....
						        </c:when>
						        <c:otherwise>
						        	${newjobboard.jobboardTitle }
						        </c:otherwise> 
					        </c:choose>

							</a></b></h4>
						
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
					<div class="col-md-3 col-sm-3 col-xs-6" style="width: 220px;">
						<div style="width: 220px; height:100px;border:2px groove fuchsia ;text-align: center">
							<!-- 아이콘 하나 달아주기 -->
							<h4><b><a href="/dolbi/jobboard/updatecount.action?jobboardNo=${ popjobboard.jobboardNo }">
							
							<c:choose>
	           					<c:when test="${fn:length(popjobboard.jobboardTitle) > 12}">
	            					${fn:substring(popjobboard.jobboardTitle,0,11)}"/>....
						        </c:when>
						        <c:otherwise>
						        	${popjobboard.jobboardTitle }
						        </c:otherwise> 
					        </c:choose>
							
							</a></b></h4>
							
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
					<div class="col-md-3 col-sm-3 col-xs-6" style="width: 220px;">
						<div style="width: 220px; height:100px;border:2px groove olive;text-align: center">
							<br />
							<h4><b><a href="/dolbi/freeboard/updatecount.action?FreeboardNo=${ albainfofreeboard.freeboardNo }">
							
							<c:choose>
	           					<c:when test="${fn:length(albainfofreeboard.freeboardTitle) > 12}">
	            					${fn:substring(albainfofreeboard.freeboardTitle,0,11)}"/>....
						        </c:when>
						        <c:otherwise>
						        	${albainfofreeboard.freeboardTitle }
						        </c:otherwise> 
					        </c:choose>
							
							</a></b> </h4>
							<h5>${albainfofreeboard.memberId } </h5>
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
					<div class="col-md-3 col-sm-3 col-xs-6" style="width: 220px;">
						<div style="width: 220px; height:100px;border:2px groove blue;text-align: center">
							<br />
							<h4><b><a href="/dolbi/freeboard/updatecount.action?FreeboardNo=${ albawarningfreeboard.freeboardNo }">
							
							<c:choose>
	           					<c:when test="${fn:length(albawarningfreeboard.freeboardTitle) > 12}">
	            					${fn:substring(albawarningfreeboard.freeboardTitle,0,11)}"/>....
						        </c:when>
						        <c:otherwise>
						        	${albawarningfreeboard.freeboardTitle }
						        </c:otherwise> 
					        </c:choose>
							
							</a></b> </h4>
							<h5>${albawarningfreeboard.memberId } </h5>
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
					<div class="col-md-3 col-sm-3 col-xs-6" style="width: 220px;">
						<div style="width: 220px; height:100px;border:2px groove maroon;text-align: center">
							<br />
							<h4><b><a href="/dolbi/freeboard/updatecount.action?FreeboardNo=${ albaexpfreeboard.freeboardNo }">
							
							<c:choose>
	           					<c:when test="${fn:length(albaexpfreeboard.freeboardTitle) > 12}">
	            					${fn:substring(albaexpfreeboard.freeboardTitle,0,11)}"/>....
						        </c:when>
						        <c:otherwise>
						        	${albaexpfreeboard.freeboardTitle }
						        </c:otherwise> 
					        </c:choose>
							
							</a> </b></h4>
							<h5>${albaexpfreeboard.memberId } </h5>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
           

	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>