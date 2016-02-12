<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
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
   
	<div class="content-wrapper">
		<div class="container">
	
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">최신 알바 채용정보</h4>
				</div>
			</div>
           
			<div class="row">
			
				<c:forEach var="newjobboard" items="${newjobboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-one">
							<i  class="fa fa-venus dashboard-div-icon" ></i>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									</div>                      
								</div>
							<h5>Simple Text Here </h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">인기 알바 채용정보</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="popjobboard" items="${popjobboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-two">
							<i  class="fa fa-venus dashboard-div-icon" ></i>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									</div>                      
								</div>
							<h5>Simple Text Here </h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 지식나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albainfofreeboard" items="${albainfofreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-three">
							<i  class="fa fa-venus dashboard-div-icon" ></i>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									</div>                      
								</div>
							<h5>Simple Text Here </h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">악덕 알바채용정보 나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albawarningfreeboard" items="${albawarningfreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-four">
							<i  class="fa fa-venus dashboard-div-icon" ></i>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									</div>                      
								</div>
							<h5>Simple Text Here </h5>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 경험나눔터</h4>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach var="albaexpfreeboard" items="${albaexpfreeboards }">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="dashboard-div-wrapper bk-clr-five">
							<i  class="fa fa-venus dashboard-div-icon" ></i>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									</div>                      
								</div>
							<h5>Simple Text Here </h5>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
           

	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>