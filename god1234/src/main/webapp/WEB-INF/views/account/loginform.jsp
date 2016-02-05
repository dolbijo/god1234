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
    	
	<script type="text/javascript">
		window.onload = function() {
			
			var failedLoginId = '${ requestScope.loginid }';
			
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
                    <h4 class="page-head-line">Please Login To Enter </h4>
                </div>
            </div>
            <div class="row">
            	<div class="col-md-6" style="width: 600px;height: 350px;color:black">
            	<h4><strong>아이디와 비밀번호를 입력해 주세요</strong></h4>
            	<hr >
            			<form action="login.action" method="post">
            			<input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
            				<label for="username"><strong>아이디</strong></label>
							<br />
							<input type="text" id="memberId" name="memberId" placeholder="Username"  class="form-control" />
							<br />
							<label for="password"><strong>비밀번호</strong></label>
							<br />
							<input type="password" id="password" name="passWd" placeholder="Password"  class="form-control"/>
            				
            				<hr />
            				<input type="submit" value="로그인" class="button btn btn-success btn-large"/>
            			</form>
            	</div>
            	<div class="col-md-6">
            		<div class="alert alert-info" style="height: 350px;width: 400px;margin-left: 50px;">
            			<h4><strong>아직 회원이 아니신가요?</strong></h4>
            			알바몽 에서는 회원 분들의 구인/구직 활동을 위한 
            			많은 서비스를 제공하고 있습니다. </br>
            			개인 회원분들께는 간편하고 빠르게 일자리를 제공하고 </br>
            			기업 회원분들께는 알맞고 적절한 인재를
            			소개해 드립니다.
            			
            			<hr>
            			<a href="/dolbi/member/register.action?usertype=individual" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;개인 회원가입 </a>&nbsp;
            			<a href="/dolbi/member/register.action?usertype=company" class="btn btn-info"><span class="glyphicon glyphicon-briefcase"></span> &nbsp;기업 회원가입 </a>&nbsp;
            		</div>
            	</div>
            </div>
        </div>
    </div>
    
    <c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>