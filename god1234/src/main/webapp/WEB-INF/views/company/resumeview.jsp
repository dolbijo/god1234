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
	<div class="content-wrapper">
    	<div class="container">
			<div class="row">
    			<div class="col-md-12">
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
		<section class="featured">
			<div class="container"> 
    		          <div style="padding-top: 10px">
    		          	<table>
                                    <tr style="text-align: center;">
                                    <td colspan="2">
    									<td style="background-color:yellowgreen;width: 83px">이력서 제목</td>
    									<td style="border: 1px solid;width:600px">${ resume.resumeTitle }</td>
    								</tr>
    								</table>
    								</div>
    								<div style="padding-top: 10px">
    								<table border="1" style="width:800px; text-align:center">    								
    								<tr>
										<td width="30">이력서 사진</td>
    									<td>이름</td>
    									<td>${ member.memberName }</td>
    									<td>생년월일</td>
    									<td><fmt:formatDate value="${ member.age}" type="date"/></td>
    								</tr>
    								<tr>
    									<td rowspan="3" height="25"><img src="<%=cp%>/resources/resume/${ reAtt.resumeSavedFilename }" style="width: 170px;height: 130px;"/></td>
    								</tr>
    								<tr>
    									<td>성별</td>
    									<td>${ member.gender }</td>
    									<td>전화번호</td>
    									<td>${ loginuser.phoneNo }</td>
    									
    								</tr>
    								<tr>
    									<td>주소</td>
    									<td colspan="3">${ member.memberAddress }</td>
    								</tr>
    							</table>
    						</div>
    						<div style="margin-bottom: 15px">
    							<table>
    								<tr><td style="padding: 17px 0 10px 0; font-size:15px; color: steelblue">자기소개</td></tr>
    								<tr><td style="width:800px;border:1px solid">${fn:replace(resume.selfintroduction, cn, br)}</td></tr>
    							</table>
    							</div>
    							
    							<div style="margin-bottom: 15px;">    						
    							<table>
    								<tr style="font-size: 15px">
    									<td colspan="4" style="color: saddlebrown;">학력사항</td>
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
    							</table>
    						</div>
    						<div style="margin-bottom:15px">
    							<table>
    								<tr style="font-size:15px;">
    									<td colspan="4" style="padding-top:10px;color:goldenrod">경력사항</td>
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
    							</table>
    							</div>
							</div>		
						</section>
					</div>
				</div>
			 
</body>
</html>
