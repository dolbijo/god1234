<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>자료업로드</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
	
</head>
<body>

	<div id="pageContainer">
	
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">업로드 자료 정보</div>
		        <table>
		            <tr>
		                <th>제목</th>
		                <td>${ jobboard.jobboardTitle }</td>
		                
		            </tr>
		            <tr>
		                <th>작성자</th>
		                <td>${ jobboard.memberId }</td>
		            </tr>
		            <tr>
		            	<th>마감일자</th>
		            	<td>${ jobboard.jobboardDeadLine}</td>
		            </tr>
		         
		            <tr>
		            	<th>상세 모집 요강</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>나이</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>모집인원</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>성별</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	 <th>학력</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>급여</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>경력정보</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            
		             
		            
		        </table>
		        <div class="buttons">
		        	<input type="button" value="편집" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px" onclick="location.href='list.action';" />
		        </div>
		    </div>
		</div>   	
	
	</div>
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>

</body>
</html>