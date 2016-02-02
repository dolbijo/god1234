<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>자료 목록</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
</head>
<body>

	<div id="pageContainer">	
	
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		
		
		<div style="padding-top:25px;text-align:center">
			<c:url var="writeform" value="/freeboard/register.action" />
			[ <a href="${ writeform }">자료 등록</a> ]
			<br /><br />

			<table border="1" style="width:600px" align="center">
				<tr style="background-color:orange;height:30px">
					<th style="width:50px">번호</th>
					<th style="width:400px">제목</th>
					<th style="width:150px">작성자</th>
					<th style="width:150px;text-align:center">작성일</th>
				</tr>
				
				<c:forEach var="freeboard" items="${ freeboards }">
				<tr style="height:30px">
					<td>${ freeboard.freeboardNo }</td>
					<td style="text-align:left;padding-left:10px">
						<c:url var="view" value="view.action">
							<c:param name="Freeboardno" value="${ freeboard.freeboardNo }" />
						</c:url>
						<a href='${ view }'>${ freeboard.freeboardTitle }</a>
					</td>
					<td>${ freeboard.memberId }</td>
					<td>${ freeboard.freeboardContent }</td>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
			
		
		
		</div>

		
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
		

</body>
</html>


