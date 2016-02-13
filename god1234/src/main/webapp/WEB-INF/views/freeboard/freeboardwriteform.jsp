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
    				<h4 class="page-head-line">알바 이야기 자료 등록</h4>
    			</div>
    		</div>
    		<br />
    		
    		<div class="row"  align="center">
    			<div class="col-md-12">
    				<div class="form-group has-error">
	    				<form action="write.action" method="post" style="padding-left: 200px;padding-right: 200px;">
	    				
	    					<label class="control-label" for="success">이야기 분류</label>
	    					<select name="freeboardtype" class="form-control">
		        				<option value="albainfo">알바 지식나눔터</option>
		        				<option value="albawarning">악덕 알바채용정보 나눔터</option>
		        				<option value="albaexp">알바 경험나눔터</option>
		        			</select>
		        			
		        			<label class="control-label" for="success">제목</label>
		        			<input type="text" class="form-control" name="freeboardTitle"/>
		        			
		        			<label class="control-label" for="success">작성 회원 아이디</label>
                            <input type="hidden" class="form-control" name="memberId" value='${ sessionScope.loginuser.memberId }' />${ sessionScope.loginuser.memberId }
	    					
	    					<label class="control-label" for="success">내용</label>
                            <textarea name="freeboardContent" class="form-control" rows="15"></textarea>
                            <br /><br />
                            <div class="buttons">
		        				<input type="submit" value="자료등록" onclick="document.forms[0].submit();" class="button btn btn-success btn-large"/>
		        				<input type="button" value="취소" onclick="location.href='list.action';" class="button btn btn-success btn-large"/>
		        			</div>
	    				</form>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>