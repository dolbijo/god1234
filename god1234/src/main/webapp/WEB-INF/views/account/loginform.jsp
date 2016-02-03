<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>로그인</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=cp%>/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" type="text/css">
	<link href="<%=cp%>/resources/bootstrap/css/pages/signin.css" rel="stylesheet" type="text/css">
	
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
	<div class="account-container">
		<div class="content clearfix">
			<form action="login.action" method="post">
		        <input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
		        <h1>Member Login</h1>
		        <div class="login-fields">
				
				<p>Please provide your details</p>
				
				<div class="field">
					<label for="username">Username</label>
					<input type="text" id="memberId" name="memberId" placeholder="Username" class="login username-field" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="passWd" placeholder="Password" class="login password-field"/>
				</div> <!-- /password -->
				
				</div> <!-- /login-fields -->
			
				<div class="login-actions">	
					<input type="submit" value="로그인" class="button btn btn-success btn-large"/>
				</div> <!-- .actions -->
		        </form>
		        
		    </div>
		</div>   	

</body>
</html>