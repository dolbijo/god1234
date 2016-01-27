<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>사용자등록</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
	<link rel="Stylesheet" href="/dolbi/resources/styles/input.css" />
</head>
<body>

	<div id="pageContainer">
	
		<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">개인회원정보</div>
		       <form action="registercom.action" method="post">
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
		                	<input type="password" name="passwd" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>비밀번호 확인</th>
		                <td>
		                    <input type="password" name="confirm" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>이름</th>
		                <td>
		                    <input type="text" name="memberName" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>성별</th>
		                <td>
		                    <input type="text" name="gender" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>나이</th>
		                <td>
		                    <input type="text" name="age" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>주소</th>
		                <td>
		                	<input type="text" name="address" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>전화번호</th>
		                <td>
		                	<input type="text" name="phoneNo" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>이메일</th>
		                <td>
		                	<input type="text" name="email" style="width:280px" />
		                </td>
		            </tr>
		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='list.action';" />
		        </div>
		        </form>
		    </div>
		</div>   	
	<div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	</div>

</body>
</html>