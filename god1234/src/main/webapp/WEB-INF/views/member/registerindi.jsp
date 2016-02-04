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
		
<!-- 		<div id="inputcontent"> -->
			<br /><br /> 
		    <div id="inputmain">
<!-- 		        <div class="inputsubtitle">개인회원정보</div> -->
		        <form action="registerindi.action" method="post"><!-- 상대경로표시 -->
		        <table align="center">
		            <div class="col-md-6" >
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	회원가입
                        </div>
                        <div class="panel-body" align="center">
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
                                            <label class="control-label" for="success">이름</label>
                                            <input type="text" class="form-control" id="memberName" name="memberName" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">성별</label>
                                            <input type="radio" class="form-control" id="gender" name="gender" value="male" style="heignt:100px;width:20px;display: inline;">남자
                                            <input type="radio" class="form-control" id="gender" name="gender" value="female" style="heignt:100px;width:20px;display: inline;">여자
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">나이</label>
                                            <input type="date" class="form-control" id="age" name="age" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">주소</label>
                                            <input type="text" class="form-control" id="memberAddress" name="memberAddress" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">전화번호</label>
                                          	<input type="text" class="form-control" id="phoneNo" name="phoneNo" />
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="control-label" for="success">이메일</label>
                                            <input type="text" class="form-control" id="email" name="email" />
                                        </div>
                                    </form>
                            <hr />
                            <hr />
                            <div class="form-group">
                                            <label>카테고리</label>
                                            <select multiple="category" class="form-control">
                                                <option>서비스</option>
                                                <option>영업</option>
                                                <option>사무직</option>
                                                <option>건설</option>
                                                <option>생산</option>
                                                <option>IT/프로그래밍</option>
                                                <option>디자인</option>
                                                <option>교육/강사</option>
                                            </select>
                                        </div>
                            <hr />
					<div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='list.action';" />
                        </div>
                            </div>
                            <c:import url="/WEB-INF/views/include/footer.jsp" /> 
                        </div>  
                                            
                </div>
<!--         </div>
    </div> -->
    
	        </table>

		        </form>
<!-- 		    </div>
		</div> -->   	
		</div>
<%-- 	<c:import url="/WEB-INF/views/include/footer.jsp" /> --%>

</body>
</html>