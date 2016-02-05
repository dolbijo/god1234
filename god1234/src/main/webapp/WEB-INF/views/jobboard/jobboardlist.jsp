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

<script type="text/javascript">
	function goPage(pageNo){
		document.listForm.pageNo.value = pageNo;
		document.listForm.submit();
		console.log("pageNo : " + pageNo);
	}

</script>


	 
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />

		
		
		<div style="padding-top:25px;text-align:center">
			 <img src ="/dolbi/resources/image/alb.JPG">
			 <br>
			<c:url var="writeform" value="/jobboard/register.action" />
			[ <a href="${ writeform }">자료 등록</a> ]
			<br /><br />

			<table border="1" style="width:1000px" align="center">
				<tr style="background-color:bisque;height:30px">
					<th style="width:50px">번호</th>
					<th style="width:400px">제목</th>
					<th style="width:200px">회사/점포</th>
					<th style="width:200px">작성자</th>
					<th style="width:150px;text-align:center">급여</th>
					<th style="width:150px;text-align:center">조회수</th>
					<th style="width:150px;text-align:center">마감일</th>
				</tr>
				
							
				<c:forEach var="jobboard" items="${ jobboards }">
				<tr style="height:30px">
					<td>${ jobboard.jobboardNo }</td>
					<td style="text-align:left;padding-left:10px">
						<a href="view.action?jobboardNo=${ jobboard.jobboardNo }">${ jobboard.jobboardTitle }</a>
					</td>
					<td>${ jobboard.memberName }</td>
					<td>${ jobboard.memberId }</td>
					<td>${ jobboard.jobboardPayment } / ${ jobboard.jobboardSalary }</td>
					<td>${ jobboard.jobboardReadCount }</td>
					<td>${ jobboard.jobboardDeadLine }</td>
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
			
				
	
	
		</div>

		
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
		

</body>
</html>


