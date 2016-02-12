<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
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
			 <br>
			<c:url var="writeform" value="/jobboard/register.action" />
			<a href="${ writeform }"class="btn btn-info"><span class="glyphicon glyphicon-chevron-down"></span>&nbsp;자료 등록</a>
			<br /><br />
			</div>
			
			<div class="panel-body">
			<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" border="1" style="width:1000px" align="center">
				<thead>
				<tr class="danger" style="height:30px">
					<th style="width:50px;text-align:center">번호</th>
					<th style="width:400px;text-align:center">공고 제목</th>
					<th style="width:200px;text-align:center">작성자</th>
					<th style="width:150px;text-align:center">급여</th>
					<th style="width:150px;text-align:center">조회수</th>
					<th style="width:150px;text-align:center">마감일</th>
					<th></th>
				</tr>
				</thead>
				
				<c:forEach var="jobboard" items="${ jobboards }">
				<tr style="height:30px">
					<td>${ jobboard.jobboardNo }</td>
					<td style="text-align:left;padding-left:10px;width:600px">
						<a href="/dolbi/jobboard/view.action?jobboardNo=${ jobboard.jobboardNo }">${ jobboard.jobboardTitle }</a>
					</td>
					<td>${ jobboard.memberId }</td>
					<td>${ jobboard.jobboardPayment } / ${ jobboard.jobboardSalary }</td>
					<td>${ jobboard.jobboardReadCount }</td>
					<td><fmt:formatDate value="${ jobboard.jobboardDeadLine }" type="date"/></td>
					<td style="width:180px;"><a href="applicationlist.action?jobboardNo=${ jobboard.jobboardNo }"class="btn btn-info">지원자 리스트 보러가기</a></td>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />			
		</div>
		</div>
		</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>


