<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">회원기본정보</div>

		        <table>
		            <tr>
		                <th>아이디(ID)</th>
		                <td>${ member.memberId }</td>
		            </tr>
		            
		            <tr>
		                <th>회사/점포명</th>
		                <td>${ member.memberName }</td>
		            </tr>		  
		             <tr>
		                <th>대표자명</th>
		                <td>${ member.ceoName }</td>
		            </tr>          
		            <tr>
		                <th>사업자등록번호</th>
		                <td>${ member.companyNo }</td>
		            </tr>
		            <tr>
		                <th>회사/점포주소</th>
		                <td>${ member.memberAddress }</td>
		            </tr>
		            <tr>
		                <th>전화번호</th>
		                <td>${ member.phoneNo }</td>
		            </tr>
		            <tr>
		                <th>회사/점포 홈페이지</th>
		                <td>${ member.homepage }</td>
		            </tr>
		            <tr>
		                <th>이메일</th>
		                <td>${ requestScope["member"].email }</td>
		            </tr>
		            <tr>
		                <th>회사구분</th>
		                <td>${ member.categoryNo }</td>
		            </tr>		            		            
		        </table>
		        <div class="buttons">
		        	<a href="listcom.action">목록</a>
		        	&nbsp;&nbsp;
		        	<a href="edit.action?memberid=${ member.memberId }">정보수정</a>
		        </div>
		    </div>
		</div>   		
		
	</div>
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>