<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<script type="text/javascript">
				window.onload = function() {
					
					var deadline = '${ requestScope.loginid }';
					
					if (failedLoginId) { 
						alert('로그인 실패');
						document.getElementById("memberId").value = failedLoginId;
					}
					
				}
			</script>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />

	<section class="featured">
		<div class="container">
			<div class="row mar-bot40">
				<div class="col-md-6 col-md-offset-3">
					<div class="align-center">
					<table border='0'>
        				<tr colspan='4'>
        					<td class="align-center">${ loginuser.memberId }님 기업페이지 입니다.</td>
        				</tr>
						<tr>	
							<tr>
								<td>기업명</td>
								<td>${ loginuser.memberName }</td>
							</tr>
							<tr>
        					<td>전화번호</td>
        					<td>&nbsp;${ loginuser.phoneNo }</td>
        					</tr>
        				</tr>
        				
        				<tr>
        					<td>이메일</td>
        					<td>${ loginuser.email }</td>
        				</tr>
        				<tr>	
        					<td>주소</td>
        					<td>${ loginuser.memberAddress }</td>
        				</tr>
        				
        			</table>

					
            		
        			<a href="ingjobboard.action?memberId=${ loginuser.memberId }">진행중인 공고</a>
        			
        			
        			<a href="endjobboard.action?memberId=${ loginuser.memberId }">마감된 공고</a>
        			
        			
						<!-- <input type="button" value="진행중인 공고"
							style="font-size: 15px; width: 100pt; height: 100pt;"
							location.href='ingsearch.action'"> 
						<input type="button" value="마감된 공고"
							style="font-size: 15px; width: 100pt; height: 100pt;"
							location.href='endsearch.action'"> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>









