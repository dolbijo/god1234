<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>사용자 정보</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
	<link rel="Stylesheet" href="/dolbi/resources/styles/input.css" />		
</head>
<body>

	<div id="pageContainer">
		
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
		        	<a href="list.action">목록</a>
		        	&nbsp;&nbsp;
		        	<a href="edit.action?memberid=${ member.memberId }">정보수정</a>
		        </div>
		    </div>
		</div>   		
		
	</div>

</body>
</html>