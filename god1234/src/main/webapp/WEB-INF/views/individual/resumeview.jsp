<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dto.Application"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

		<section class="featured">
			<div class="container"> 
				<div class="row mar-bot40">
					<div class="col-md-6 col-md-offset-3">
						<div class="align-center">
						
						<table border="1">
    							<tr>
    								<td>이력서 제목</td>
    								<td colspan="3">${resume.resumeTitle }</td>
    							</tr>
    							<tr>
    								<td colspan="2">이력서 사진</td>
    								<td colspan="2"><img src="resume/${reAtt.resumeSavedFilename }" /></td>
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
    								<td>${member.age}</td>
    							</tr>
    							<tr>
    								<td>주소</td>
    								<td colspan="3">${ loginuser.memberAddress }</td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr><td>자기소개를 작성해 주세요</td></tr>
    							<tr><td>${resume.selfintroduction }</td></tr>
    						</table>
    						
    						<table>
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
    								<td>${education.edStartDate }</td>
    								<td>${education.edEndDate }</td>
    							</tr>
    							</c:forEach>
    						</table>
    						
    						<table>
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
    								<td>${career.caStartDate }</td>
    								<td>${career.caEndDate }</td>
    							</tr>
    							</c:forEach>
    						</table>
    						
    						<table>
    							<tr>
    								<td>이력서의 공개여부</td>
    								<td>
    									${resume.ispublic }
    								</td>
    							</tr>
    						</table>
						
						</div>
						</div>
						</div>
    </div>
    </section>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>
