<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>자료 목록</title>
	<link rel="Stylesheet" href="/spring-mvc-demoweb5/resources/styles/default.css" />
</head>
<body>

	<div id="pageContainer">	
	
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		
		<div style="padding-top:25px;text-align:center">
			<c:url var="writeform" value="/upload/write.action" />
			[ <a href="${ writeform }">자료 등록</a> ]
			<br /><br />

			<table border="1" style="width:600px" align="center">
				<tr style="background-color:orange;height:30px">
					<th style="width:50px">번호</th>
					<th style="width:400px">제목</th>
					<th style="width:150px;text-align:center">작성일</th>
				</tr>
				
				<c:forEach var="upload" items="${ uploads }">
				<tr style="height:30px">
					<td>${ upload.uploadNo }</td>
					<td style="text-align:left;padding-left:10px">
						<c:url var="view" value="view.action">
							<c:param name="uploadno" value="${ upload.uploadNo }" />
						</c:url>
						<a href='${ view }'>${ upload.title }</a>
					</td>
					<td>${ upload.regDate }</td>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
		
		</div>
		
	</div>
		

</body>
</html>











