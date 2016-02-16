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

<!-- 담을 내용은 회원 수(기업, 개인 따로별로) : 총 3개
모든 공고 개수 미완료/완료 : 3개
임금 비교 통계 그래프
악덕기업 보고 수 -->
	<div class="content-wrapper">
	    <div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">관리자 페이지-기업회원 관리</h4>
				</div>
			</div>    
			<div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	시스템 데이터 분석 / 관리 
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#g1" data-toggle="tab">Home</a>
                                </li>
                                <li class=""><a href="#g2" data-toggle="tab">Profile</a>
                                </li>
                                <li class=""><a href="#g3" data-toggle="tab">Messages</a>
                                </li>
                                
                            </ul>
                            
                            <!--  
                            	model.addAttribute("groupJobbaordsCount", groupJobbaordsCount);
								model.addAttribute("groupApplication", groupApplication);
								model.addAttribute("groupCategory", groupCategory);
                            -->

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="g1">
                                	<table style="width:100%">
                                		<tr>
                                			<td>
                                				기업이 사용하는 급료의 형태 <br />
                                				<c:forEach var="gjc" items="${groupJobbaordsCount }">
                                					<b>${gjc.jobboardPayment }</b> : ${gjc.groupPaymentCount }<br />
                                				</c:forEach>
                                			</td>
                                			<td style="width:50%"><img src="<%=cp%>/resources/graph/g1.png" /></td>
                                		</tr>
                                	</table>
                                </div>
                                <div class="tab-pane fade" id="g2">
                                	<table style="width:100%">
                                		<tr>
                                			<td>
                                				<c:forEach var="ga" items="${groupApplication }">
                                					<b>${ga.applicationRegdate }</b> : ${gjc.groupDateCount }<br />
                                				</c:forEach>
                                			</td>
                                			<td style="width:50%"><img src="<%=cp%>/resources/graph/g2.png" /></td>
                                		</tr>
                                	</table>
                                </div>
                                <div class="tab-pane fade" id="g3">
                                	<table style="width:100%">
                                		<tr>
                                			<td>
                                				<c:forEach var="gc" items="${groupCategory }">
                                					<b>${gc.categoryMap }</b> : ${gc.categoryName }<br />
                                				</c:forEach>
                                			</td>
                                			<td style="width:50%"><img src="<%=cp%>/resources/graph/g3.png" /></td>
                                		</tr>
                                	</table>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                </div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>









