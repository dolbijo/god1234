<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
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
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
    			
    			<c:forEach var="i" begin="0" end="${indexNo-1 }">
    			
    			<c:set var="jobboards" value="jobboards${i }" />
    			<c:set var="searchtag" value="searchtag${i }" />
    			[${requestScope[searchtag]}]
	    			<table class="table table-hover" style="width:1000px;height:10px" align="center">
					<tr class="danger" style="height:30px;color:black;">
						<th style="width:70px">번호</th>
						<th style="width:400px">제목</th>
						<th style="width:150px">회사/점포</th>
						<th style="width:100px">작성자</th>
						<th style="width:100px">성별</th>
						<th style="width:150px;text-align:center">급여</th>
						<th style="width:120px;text-align:center">조회수</th>
						<th style="width:150px;text-align:center">마감일</th>
					</tr>
					
								
					<c:forEach var="jobboard" items="${requestScope[jobboards]}">
					<tr style="height:20px;color:slategrey;">
						<td style="padding-top:20px">${ jobboard.jobboardNo }</td>
						<td style="text-align:left;padding-top:20px">
							<a href="updatecount.action?jobboardNo=${ jobboard.jobboardNo }">${ jobboard.jobboardTitle }</a>
						</td>
	
						<td>${ jobboard.memberName }</td>
						<td>${ jobboard.memberId }</td>
						
						<td>
							<c:choose>
							
	            			<c:when test="${ jobboard.jobboardGender eq 'male' }">
			            		남성
			            	</c:when>
			            	
			            	<c:when test="${ jobboard.jobboardGender eq 'female' }">
			            		여성
			            	</c:when>
			            	
			        		<c:otherwise>
			        			남여무관
			        		</c:otherwise>
			        		
			        		</c:choose>
	        				
						</td>
						<td>
						
							<c:choose>
							
	            			<c:when test="${ jobboard.jobboardPayment eq 'permonth' }">
			            		월급
			            	</c:when>
			            	
			            	<c:when test="${ jobboard.jobboardPayment eq 'perweek' }">
			            		주급
			            	</c:when>
			            	
			        		<c:otherwise>
			        			시급
			        		</c:otherwise>
			        		
			        		</c:choose>
						
						 / <fmt:formatNumber type="number" maxFractionDigits="3" value="${ jobboard.jobboardSalary }" />원</td>
						<td>${ jobboard.jobboardReadCount }</td>
						<td><fmt:formatDate value="${ jobboard.jobboardDeadLine }" type="date"/></td>
	
					</tr>
					</c:forEach>
					
				</table>
			</c:forEach>
    </div>
        
    </div>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>
