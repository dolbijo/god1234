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
		        <div class="inputsubtitle">기업회원정보</div>
		        <form action="registercom.action" method="post"><!-- 상대경로표시 -->
		        <table>
		        <tr>
		                <th>아이디</th>
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
		                <th>회사/점포명</th>
		                <td>
		                    <input type="text" name="memberName" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>대표자명</th>
		                <td>
		                    <input type="text" name="ceoName" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>사업자등록번호</th>
		                <td>
		                    <input type="text" name="companyNo" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>회사/점포주소</th>
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
		                <th>회사/점포 홈페이지</th>
		                <td>
		                	<input type="text" name="homepage" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>이메일</th>
		                <td>
		                	<input type="text" name="email" style="width:280px" />
		                </td>
		            </tr>

		            
		            <tr>
		                <th>회사구분</th>
		                 <td>
		                <input type="radio" name="categoryNo" value="1"> 서비스
		                <input type="radio" name="categoryNo" value="2"> 영업
		                <input type="radio" name="categoryNo" value="3"> 사무직
		                <input type="radio" name="categoryNo" value="4"> 건설
		                <input type="radio" name="categoryNo" value="5"> 생산
		                <input type="radio" name="categoryNo" value="6"> IT/프로그래밍
		                <input type="radio" name="categoryNo" value="7"> 디자인
		                <input type="radio" name="categoryNo" value="8"> 교육/강사
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
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>