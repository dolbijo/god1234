<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css"
	rel="stylesheet" />
<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
<script type="text/javascript">
	window.onload = function() {

		var deadline = '${ requestScope.loginid }';

		if (failedLoginId) {
			alert('로그인 실패');
			document.getElementById("memberId").value = failedLoginId;
		}

	}
</script>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="content-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">${ loginuser.memberId }님기업페이지</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<!--    Hover Rows  -->
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-hover">
								<tbody>
									<tr>
										<td>기업명</td>
										<td>${ loginuser.memberName }</td>
									</tr>
									<tr>
										<td>전화번호</td>
										<td>&nbsp;${ loginuser.phoneNo }</td>
									</tr>
									<tr>
										<td>이메일</td>
										<td>${ loginuser.email }</td>
									</tr>
									<tr>
										<td>주소</td>
										<td>${ loginuser.memberAddress }</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>

				<a href="ingjobboard.action?memberId=${ loginuser.memberId }"
					class="btn btn-info"><span class="glyphicon glyphicon-user"></span>
					&nbsp;진행중인 공고 </a>&nbsp; <a
					href="endjobboard.action?memberId=${ loginuser.memberId }"
					class="btn btn-info"><span class="glyphicon glyphicon-user"></span>
					&nbsp;마감된 공고 </a>&nbsp;
			</div>
		</div>
	</div>
	</div>
	</section>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>









