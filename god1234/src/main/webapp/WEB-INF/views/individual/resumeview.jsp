<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dto.Application"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String cp = request.getContextPath(); %>
<%
        pageContext.setAttribute("cr", "\r");  // Space
        pageContext.setAttribute("cn", "\n");  // Enter
        pageContext.setAttribute("crcn", "\r\n");  // Space, Enter
        pageContext.setAttribute("br", "<br/>");  // <br> tag
 %>
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
			<div class="row">	
				<div class="col-md-12">
    		    	<div class="alert alert-success">
		    			<h3 align="center"><b>${ resume.resumeTitle }</b></h3>
	    			</div>
    			</div>
    			
    			<h4><b>인적사항</b></h4>
	            <hr />
    			<div class="col-md-12" align="center">
    				<table border="1" style="width:800px; text-align:center">    								
	    				<tr>
							<td width="30">이력서 사진</td>
		    				<td><b>이름</b></td>
		    				<td>${ loginuser.memberName }</td>
		    				<td><b>생년월일</b></td>
		    				<td><fmt:formatDate value="${ member.age}" type="date"/></td>
	    				</tr>
	    				<tr>
	    					<td rowspan="3" height="25"><img src="<%=cp%>/resources/resume/${ reAtt.resumeSavedFilename }" style="width: 170px;height: 130px;"/></td>
	    				</tr>
	    				<tr>
		    				<td><b>성별</b></td>
		    				<td>${ member.gender }</td>
		    				<td><b>전화번호</b></td>
		    				<td>0${ loginuser.phoneNo }</td>
	    				</tr>
	    				<tr>
		    				<td><b>주소</b></td>
		    				<td colspan="3">${ loginuser.memberAddress }</td>
	    				</tr>
    				</table>
    			</div>
    			
    			<h4><b>자기소개</b></h4>
    			<hr />
    			<div class="col-md-12" align="center">
		           	${fn:replace(resume.selfintroduction, cn, br)}
    			</div>
    				
    			<h4><b>학력사항</b></h4>
	            <hr />				
    			<div class="col-md-12" align="center">   
    				<table>
	    				<tr>
		    				<td><b>학교이름</b></td>
		    				<td><b>전공</b></td>
		    				<td><b>입학일자</b></td>
		    				<td><b>졸업일자</b></td>
	    				</tr>
	    				<c:forEach var="education" items="${ educations }">
	    				<tr>
		    				<td>${education.schoolName }</td>
		    				<td>${education.major }</td>
		    				<td><fmt:formatDate value="${education.edStartDate }" type="date"/></td>
		    				<td><fmt:formatDate value="${education.edEndDate }" type="date"/></td>
	    				</tr>
	    				</c:forEach>
    				</table>
    			</div>
    			
    			<h4><b>경력사항</b></h4>
	            <hr />
    			<div class="col-md-12" align="center">
    				<table>
	    				<tr>
		    				<td><b>회사이름</b></td>
		    				<td><b>회사종류</b></td>
		    				<td><b>입사일자</b></td>
		    				<td><b>퇴사일자</b></td>
	    				</tr>
	    				<c:forEach var="career" items="${ careers }">
	    				<tr>
		    				<td>${career.companyName }</td>
		    				<td>${career.companyType }</td>
		    				<td><fmt:formatDate value="${career.caStartDate }" type="date"/></td>
		    				<td><fmt:formatDate value="${career.caEndDate }" type="date"/></td>
	    				</tr>
	    				</c:forEach>
    				</table>
    			</div>
    						
    			<br /><br />	
    			<div class="col-md-12" align="center">
    				<table>
	    				<tr>
		    				<td>
		    				<c:choose>
			            			<c:when test="${ resume.ispublic }">[공개된 이력서 입니다.]</c:when>
					        		<c:otherwise>[비공개된 이력서 입니다.]</c:otherwise>
				        	</c:choose>
				        	<br /><br />	
		    				</td>
	    				</tr>
	    				<tr>
		    				<td>
		    					<a href="#" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span>이력서 수정</a>
							</td>
	    				</tr>
    				</table>
				</div>
			</div>		
		</div>
	</div>

    <c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>
