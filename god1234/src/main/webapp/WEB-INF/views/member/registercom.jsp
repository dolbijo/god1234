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
    				<h4 class="page-head-line">기업 회원가입 </h4>
    			</div>
    			<br />
    			<div class="row"  align="center">
    				<div class="col-md-12">
    					<div class="form-group has-error">
		        <form action="registercom.action" method="post" style="padding-left: 200px;padding-right: 200px;"><!-- 상대경로표시 -->
		                               
                                            <label class="control-label" for="success">아이디(ID)</label>
                                            <input type="text" class="form-control" id="memberId" name="memberId" />
                                                                             
                                            <label class="control-label" for="success">비밀번호</label>
                                            <input type="password" class="form-control" id="passWd" name="passWd" />
                                      
                                            <label class="control-label" for="success">비밀번호 확인</label>
                                            <input type="password" class="form-control" id="confirm" name="confirm" />
                                      
                                            <label class="control-label" for="success">회사/점포명</label>
                                            <input type="text" class="form-control" id="memberName" name="memberName" />
                                       
                                            <label class="control-label" for="success">대표자명</label>
                                            <input type="text" class="form-control" id="ceoName" name="ceoName" />
                                        
                                            <label class="control-label" for="success">사업자등록번호</label>
                                            <input type="text" class="form-control" id="companyNo" name="companyNo" />
                                        
                                            <label class="control-label" for="success">회사/점포주소</label>
                                            <input type="text" class="form-control" id="memberAddress" name="memberAddress" />
                                        
                                            <label class="control-label" for="success">전화번호</label>
                                            <input type="text" class="form-control" id="phoneNo" name="phoneNo" />
                                        
                                            <label class="control-label" for="success">회사/점포 홈페이지</label>
                                            <input type="text" class="form-control" id="homepage" name="homepage" />
                                        
                                            <label class="control-label" for="success">이메일</label>
                                            <input type="text" class="form-control" id="email" name="email" />
                                        
                                            <label style="margin-top:10px">회사구분을 선택해주세요</label>
                                            
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="1" style="heignt:100px;width:20px;display: inline;">서비스
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="2" style="heignt:100px;width:20px;display: inline;">영업
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="3" style="heignt:100px;width:20px;display: inline;">사무직
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="4" style="heignt:100px;width:20px;display: inline;">건설
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="5" style="heignt:100px;width:20px;display: inline;">생산
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="6" style="heignt:100px;width:20px;display: inline;">IT/프로그래밍
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="7" style="heignt:100px;width:20px;display: inline;">디자인
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="8" style="heignt:100px;width:20px;display: inline;">교육/강사
                                            
                                            
                                            <br /><br />
		        	<input type="submit" value="등록" class="button btn btn-success btn-large"/>
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