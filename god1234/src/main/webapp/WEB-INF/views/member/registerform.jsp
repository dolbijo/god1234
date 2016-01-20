<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
		        <div class="inputsubtitle">회원기본정보</div>
		        <form action="register.action" method="post"><!-- 상대경로표시 -->
		        <table>
		            <tr>
		                <th>아이디(ID)</th>
		                <td>
		                    <input type="text" name="memberId" style="width:280px" />
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
		                <th>이메일</th>
		                <td>
		                	<input type="text" name="email" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>사용자구분</th>
		                <td>
		                	<input type="radio" name="userType" value="user" checked="checked">사용자</input>
		                	<input type="radio" name="userType" value="admin">관리자</input>
		                </td>
		            </tr>
		            <tr>
		                <th>활성화여부</th>
		                <td>
		                	<input type="checkbox" name="active" value="true">활성사용자</input>
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
	
	</div>

</body>
</html>