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
	
		
		
		<div style="padding-top:25px;text-align:center">
			<c:url var="writeform" value="/jobboard/register.action" />
			[ <a href="${ writeform }">자료 등록</a> ]
			<br /><br />

			<table class="table table-hover" style="width:1000px;height:10px" align="center">
				<tr class="danger" style="height:30px;color:black;">
					<th style="width:70px">번호</th>
					<th style="width:400px">제목</th>
					<th style="width:150px">회사/점포</th>
					<th style="width:100px">작성자</th>
					<th style="width:150px;text-align:center">급여</th>
					<th style="width:120px;text-align:center">조회수</th>
					<th style="width:150px;text-align:center">마감일</th>
				</tr>
				
				<c:forEach var="jobboard" items="${ jobboards }">
				<tr style="height:20px;color:slategrey;">
					<td style="padding-top:20px">${ jobboard.jobboardNo }</td>
					<td style="text-align:left;padding-top:20px">
						<a href="view.action?jobboardNo=${ jobboard.jobboardNo }">${ jobboard.jobboardTitle }</a>
					</td>
					<td style="padding-top:15px">${ jobboard.memberName }</td>
					<td style="padding-top:15px">${ jobboard.memberId }</td>
					<td style="padding-top:15px">${ jobboard.jobboardPayment } / ${ jobboard.jobboardSalary }</td>
					<td style="padding-top:15px">${ jobboard.jobboardReadCount }</td>
					<td style="padding-top:15px">${ jobboard.jobboardDeadLine }</td>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
			
		
		
		</div>

		
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
		

</body>
</html>


