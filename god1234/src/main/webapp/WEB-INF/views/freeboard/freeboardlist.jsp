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
    
<script type="text/javascript">
	function goPage(pageNo){
		document.listForm.pageNo.value = pageNo;
		document.listForm.submit();
		console.log("pageNo : " + pageNo);
	}
	
</script>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<div class="content-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 이야기 나눔터</h4>
				</div>
			</div>
			
			<div class="row">
				<div style="text-align:center">
					<c:url var="writeform" value="/freeboard/register.action" />
					<c:if test="${ loginuser.memberType eq 'individual' }">
						<a href="${ writeform }"class="btn btn-info"><span class="glyphicon glyphicon-ok"></span> &nbsp;자료 등록 </a>&nbsp;
					</c:if>
					<br /><br />
				</div>
				<div>
					<table class="table table-hover" style="width:1000px;height:10px;text-align: center" align="center">
						<tr class="danger" style="height:30px;color:black;">
							<th style="width:50px">번호</th>
							<th style="width:400px">제목</th>
							<th style="width:150px">작성자</th>
							<th style="width:150px;text-align:center">작성일</th>
							<th style="width:150px;text-align:center">조회수</th>
						</tr>
					            
						<c:forEach var="freeboard" items="${ freeboards }">
						<tr style="height:20px;color:slategrey;">
							<td style="padding-top:20px">${ freeboard.freeboardNo }</td>
							<td style="text-align:left;padding-left:20px">
							<c:url var="view" value="updatecount.action">
							<c:param name="FreeboardNo" value="${ freeboard.freeboardNo }" />
							</c:url>
							<a href='${ view }' style="text-decoration: none">${ freeboard.freeboardTitle }</a>
							</td>
							<td>${ freeboard.memberId }</td>
							<td>${ freeboard.freeboardRegDate }</td>
							<td>${ freeboard.freeboardReadCount }</td>
						</tr>
						</c:forEach>
					</table>
					<br /><br /><br /><br />
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>
