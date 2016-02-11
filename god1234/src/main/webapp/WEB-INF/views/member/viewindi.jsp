<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
	<meta charset="utf-8" />
	<title>사용자 정보</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" type="text/css">
	<link href="<%=cp%>/resources/bootstrap/css/pages/signin.css" rel="stylesheet" type="text/css">
		

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
		                <th>이름</th>
		                <td>${ member.memberName }</td>
		            </tr>
		            <tr>
		                <th>성별</th>
		                <td>${ member.gender }</td>
		            </tr>		            
		            <tr>
		                <th>나이</th>
		                <td>${ member.age }</td>
		            </tr>
		            <tr>
		                <th>주소</th>
		                <td>${ member.memberAddress }</td>
		            </tr>	
		            <tr>
		                <th>전화번호</th>
		                <td>${ member.phoneNo }</td>
		            </tr>	
		            <tr>
		                <th>이메일</th>
		                <td>${ requestScope["member"].email }</td>
		            </tr>            		  
<%-- 		            <tr>
		                <th>카테고리</th>
		                <td>${ member.likedCategory }</td>
		            </tr>   --%>        
		        </table>
		        <div class="buttons">
		        	<a href="listindi.action">목록</a>
		        	&nbsp;&nbsp;
		        	<a href="edit.action?memberid=${ member.memberId }">정보수정</a>
		        </div>
		    </div>
		</div>   		
		
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>