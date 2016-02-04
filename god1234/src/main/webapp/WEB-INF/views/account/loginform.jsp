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
            	<div class="col-md-6">
            		<div class="alert alert-info">
            			<form action="login.action" method="post">
            			<input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
            				<label for="username">아이디</label>
							<br />
							<input type="text" id="memberId" name="memberId" placeholder="Username"  class="form-control" />
							<br />
							<label for="password">비밀번호</label>
							<br />
							<input type="password" id="password" name="passWd" placeholder="Password"  class="form-control"/>
            				
            				<hr />
            				<input type="submit" value="로그인" class="button btn btn-success btn-large"/>
            			</form>
            		</div>
            	</div>
            </div>
        </div>
    </div>
    
    <c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>