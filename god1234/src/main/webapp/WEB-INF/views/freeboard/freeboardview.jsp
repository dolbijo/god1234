<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">업로드 자료 정보</div>
		        <table>
		            <tr>
		                <th>제목</th>
		                <td>${ freeboard.freeboardTitle}</td>
		            </tr>
		            <tr>
		                <th>작성자</th>
		                <td>${ freeboard.memberId}</td>
		            </tr>
		            
		            <tr>
		                <th>질문</th>
		                <td>${ freeboard.freeboardContent }</td>
		            </tr>
		        </table>
		        <div class="buttons">

		        	
		        	<a href="edit.action?freeboardno=${ freeboard.freeboardNo }">정보수정</a>

		        <c:if test="${ loginuser.memberId == freeboard.memberId }">
		        	<input type="button" value="편집" style="height:25px" />
		        </c:if>

		        	<input type="button" value="취소" style="height:25px" onclick="location.href='list.action';" />
		        </div>
		    </div>
		</div>   	
	
	</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>