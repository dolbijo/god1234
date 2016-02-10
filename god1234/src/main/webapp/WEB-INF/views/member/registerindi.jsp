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
	<div class="content-wrapper">
        <div class="container">
			<div class="row">
    			<div class="col-md-12">
    				<h4 class="page-head-line">개인 회원가입 </h4>
    			</div>
    			<br />
    			<div class="row"  align="center">
    				<div class="col-md-12">
    					<div class="form-group has-error">
    						<form action="registerindi.action" method="post" style="padding-left: 200px;padding-right: 200px;"><!-- 상대경로표시 -->
    							<label class="control-label" for="success">아이디(ID)</label>
                                <input type="text" class="form-control" name="memberId" />
    							
    							<label class="control-label" for="success">비밀번호</label>
                                <input type="password" class="form-control" name="passWd" />
                                
                                <label class="control-label" for="success">비밀번호 확인</label>
                                <input type="password" class="form-control" name="confirm" />
                                
                                <label class="control-label" for="success">이름</label>
                                <input type="text" class="form-control" name="memberName" />
                                
                                <label class="control-label" for="success">성별</label>
                                <input type="radio" class="form-control" name="gender" value="male" style="heignt:100px;width:20px;display: inline;">남자
                                <input type="radio" class="form-control" name="gender" value="female" style="heignt:100px;width:20px;display: inline;">여자
    						
    							<label class="control-label" for="success">나이</label>
                                <input type="date" class="form-control" name="age" />
                                
                                <label class="control-label" for="success">주소</label>
                                <input type="text" class="form-control" name="memberAddress" />
    							
    							<label class="control-label" for="success">전화번호</label>
                                <input type="text" class="form-control" name="phoneNo" />
                                
                                <label class="control-label" for="success">이메일</label>
                                <input type="text" class="form-control" name="email" />
                                
                                <label>관심분야를 선택해주세요</label>
                                <input type="checkbox" name="service" value="1">서비스
                                <input type="checkbox" name="sale" value="2">영업
                                <input type="checkbox" name="office" value="3">사무직
                                <input type="checkbox" name="construction" value="4">건설
                                <input type="checkbox" name="procuction" value="5">생산
                                <input type="checkbox" name="it" value="6">IT/프로그래밍
                                <input type="checkbox" name="design" value="7">디자인
                                <input type="checkbox" name="education" value="8">교육/강사
                                
                                <br /><br />
                                <input type="submit" value="등록"  class="button btn btn-success btn-large"/>
		        				<input type="button" value="취소" onclick="location.href='list.action';" class="button btn btn-success btn-large"/>
    						</form>
    					</div>
    				</div>
                </div>
    			
    		</div>
    	</div>
   	</div>


	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>