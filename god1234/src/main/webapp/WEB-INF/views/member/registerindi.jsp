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
		        <div class="inputsubtitle">개인회원정보</div>
		        <form action="registerindi.action" method="post"><!-- 상대경로표시 -->
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
		                	<input type="password" name="passWd" style="width:280px" />
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
		                    <input type="radio" name="gender" value="male"> 남자
		                    <input type="radio" name="gender" value="female"> 여자
		                </td>
		            </tr>
		            <tr>
		                <th>나이</th>
		                <td>
		                    <input type="date" name="age" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>주소</th>
		                <td>
		                	<input type="text" name="memberAddress" style="width:280px" />
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
		            <tr>
		                <th>카테고리</th>
		                <td>
		                	<input type="checkbox" name="categoryNo" value="1" />서비스
		                	<input type="checkbox" name="categoryNo" value="2" />영업
		                	<input type="checkbox" name="categoryNo" value="3" />사무직
		                	<input type="checkbox" name="categoryNo" value="4" />건설
		                	<input type="checkbox" name="categoryNo" value="5" />생산
		                	<input type="checkbox" name="categoryNo" value="6" />IT/프로그래밍
		                	<input type="checkbox" name="categoryNo" value="7" />디자인
		                	<input type="checkbox" name="categoryNo" value="8" />교육/강사
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