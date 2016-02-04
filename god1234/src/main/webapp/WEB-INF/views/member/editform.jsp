<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		        <form:form method="post" modelAttribute="member">
		        <table>
		            <tr>
		                <th>아이디(ID)</th>
		                <td>
		                	<!-- ((Member)request.getAttribute("member")).getMemberId() -->
		                	<!-- ${ member.memberId } -->
		                    <form:input type="text" path="memberId"
		                    	cssStyle="width:280px;" readonly="true" />
		                </td>
		            </tr>
		            <tr>
		                <th>비밀번호</th>
		                <td>
		                	<form:password path="passwd" cssStyle="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>비밀번호 확인</th>
		                <td>
		                    <input type="password" name="confirm" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>이메일</th>
		                <td>
		                	<form:input type="text" path="email" cssStyle="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>사용자구분</th>
		                <td>
		                	<form:radiobutton path="userType" value="user" />사용자
		                	<form:radiobutton path="userType" value="admin" />관리자
		                </td>
		            </tr>
		            <tr>
		                <th>활성화여부</th>
		                <td>
		                	<form:checkbox path="active" value="true" />활성사용자
		                </td>
		            </tr>		            		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="수정" style="height:25px" />
		        	<%-- <input type="button" value="취소" style="height:25px"
		        		onclick="location.href='view.action?memberid=${ param.memberid }';" /> --%>
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='view.action?memberid=${ member.memberId }';" />
		        </div>
		        </form:form>
		    </div>
		</div>   	
	
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>