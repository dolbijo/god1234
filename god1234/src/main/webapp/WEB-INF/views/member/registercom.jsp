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
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">기업회원정보</div>
		        <form action="registercom.action" method="post"><!-- 상대경로표시 -->
		        <table>
		            <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	기업회원가입
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">아이디(ID)</label>
                                            <input type="text" class="form-control" id="memberId" name="memberId" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">비밀번호</label>
                                            <input type="password" class="form-control" id="passWd" name="passWd" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">비밀번호 확인</label>
                                            <input type="password" class="form-control" id="confirm" name="confirm" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">회사/점포명</label>
                                            <input type="text" class="form-control" id="memberName" name="memberName" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">대표자명</label>
                                            <input type="text" class="form-control" id="ceoName" name="ceoName" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">사업자등록번호</label>
                                            <input type="text" class="form-control" id="companyNo" name="companyNo" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">회사/점포주소</label>
                                            <input type="text" class="form-control" id="memberAddress" name="memberAddress" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">전화번호</label>
                                            <input type="text" class="form-control" id="phoneNo" name="phoneNo" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">회사/점포 홈페이지</label>
                                            <input type="text" class="form-control" id="homepage" name="homepage" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">이메일</label>
                                            <input type="text" class="form-control" id="email" name="email" />
                                        </div>
                                        <div class="form-group has-success" text-align="center" >
                                            <label class="control-label" for="success">회사구분</label>
                                            
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="1" style="heignt:100px;width:20px;display: inline;">서비스
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="2" style="heignt:100px;width:20px;display: inline;">영업
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="3" style="heignt:100px;width:20px;display: inline;">사무직
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="4" style="heignt:100px;width:20px;display: inline;">건설
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="5" style="heignt:100px;width:20px;display: inline;">생산
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="6" style="heignt:100px;width:20px;display: inline;">IT/프로그래밍
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="7" style="heignt:100px;width:20px;display: inline;">디자인
                                            <input type="radio" class="form-control" id="categoryNo" name="categoryNo" value="8" style="heignt:100px;width:20px;display: inline;">교육/강사
                                            
                                        </div>
                                    </form>
                                    <hr />
                            <hr />
                            
                    <div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='list.action';" />
		        </div>
		        	<c:import url="/WEB-INF/views/include/footer.jsp" />
                        </div>
                            </div>
                        </div>
                </div>
        </div>
    </div>

		        </table>
		        
		        </form>
		    </div>
		</div>   	


</body>
</html>