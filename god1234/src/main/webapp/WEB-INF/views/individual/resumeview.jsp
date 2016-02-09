<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dto.Application"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
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
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
    		<div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tbody>
                                    <tr>
    									<td>이력서 제목</td>
    									<td colspan="3">${resume.resumeTitle }</td>
    								</tr>
    								<tr>
    									<td colspan="2">이력서 사진</td>
    									<td colspan="2"><img src="<%=cp%>/resumefile/${reAtt.resumeSavedFilename }" /></td>
    								</tr>
    								<tr>
    									<td>이름</td>
    									<td>${ loginuser.memberName }</td>
    									<td>성별</td>
    									<td>${ member.gender }</td>
    								</tr>
    								<tr>
    									<td>전화번호</td>
    									<td>${ loginuser.phoneNo }</td>
    									<td>생년월일</td>
    									<td><fmt:formatDate value="${member.age}" type="date"/></td>
    								</tr>
    								<tr>
    									<td>주소</td>
    									<td colspan="3">${ loginuser.memberAddress }</td>
    								</tr>
    							</tbody>
    							</table>
    						
    							<table class="table table-hover">
    							<tbody>
    								<tr><td>자기소개</td></tr>
    								<tr><td>${resume.selfintroduction }</td></tr>
    							</tbody>
    							</table>
    						
    							<table class="table table-hover">
    							<tbody>
    								<tr>
    									<td colspan="4">학력사항</td>
    								</tr>
    								<tr>
    									<td>학교이름</td>
    									<td>전공</td>
    									<td>입학일자</td>
    									<td>졸업일자</td>
    								</tr>
    								<c:forEach var="education" items="${ educations }">
    								<tr>
    									<td>${education.schoolName }</td>
    									<td>${education.major }</td>
    									<td><fmt:formatDate value="${education.edStartDate }" type="date"/></td>
    									<td><fmt:formatDate value="${education.edEndDate }" type="date"/></td>
    								</tr>
    								</c:forEach>
    							</tbody>
    							</table>
    						
    							<table class="table table-hover">
    							<tbody>
    								<tr>
    									<td colspan="4">경력사항</td>
    								</tr>
    								<tr>
    									<td>회사이름</td>
    									<td>회사종류</td>
    									<td>입사일자</td>
    									<td>퇴사일자</td>
    								</tr>
    								<c:forEach var="career" items="${ careers }">
    								<tr>
    									<td>${career.companyName }</td>
    									<td>${career.companyType }</td>
    									<td><fmt:formatDate value="${career.caStartDate }" type="date"/></td>
    									<td><fmt:formatDate value="${career.caEndDate }" type="date"/></td>
    								</tr>
    								</c:forEach>
    							</tbody>
    							</table>
    						
    							<table class="table table-hover">
    							<tbody>
    								<tr>
    									<td>이력서의 공개여부</td>
    									<td>
    										${resume.ispublic }
    									</td>
    								</tr>
    							</tbody>
    							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

    <c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>
