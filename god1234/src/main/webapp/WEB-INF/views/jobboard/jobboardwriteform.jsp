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
    				<h4 class="page-head-line">채용 자료 등록</h4>
    			</div>
    			<br />
    			<div class="row"  align="center">
    				<div class="col-md-12">
    					<div class="form-group has-error">
    						<form action="write.action" method="post" style="padding-left: 200px;padding-right: 200px;"><!-- 상대경로표시 -->
    							<label class="control-label" for="success">제목</label>
                                <input type="text" class="form-control" name="title" style="width:580px"/>
    							
    							<label class="control-label" for="success">회사/점포명</label>
                                <input type="text" class="form-control" name="memberName" value='${ sessionScope.loginuser.memberName }'
		                	     ${ sessionScope.loginuser.memberName } />
                                
                                <label class="control-label" for="success">작성자</label>
                                <input type="text" class="form-control" name="uploader" class="form-control" 
                                value='${ loginuser.memberId }'${ loginuser.memberId }/>
                                
                                <label class="control-label" for="success">첨부파일</label>
                                 <input type="file" class="form-control" name="attach" style="width:650px;height:50px" />
                               
                                
                                <label class="control-label" for="success">상세 모집 요강</label>
                                <input type="content" class="form-control" style="width:580px;height:500px" rows="15"/>
                                
                                <label class="control-label" for="success">마감일</label>
                                <input type="date" class="form-control"  name = "deadline" />
                                
                                <label class="control-label" for="success">성별</label>
                                <input type="radio" class="form-control" id="gender" name="gender" value="male" style="heignt:100px;width:20px;display: inline;">남자
                                <input type="radio" class="form-control" id="gender" name="gender" value="female" style="heignt:100px;width:20px;display: inline;">여자
    						
    							<label class="control-label" for="success">모집 연령</label>
                                <select id="birthday" name="birthday" class="form-control" value="selectbirth">
                                <option value="">나이무관</option>
    							 <option value="">출생년도 선택</option>
     							<%for(int i=1950; i<=2010; i++){ %>
    							 <option value="<%=i%>"><%=i+"년"%></option>
     							<%} %>
                            
                                
    							
    							<label class="control-label" for="success">전화번호</label>
                                <input type="text" class="form-control" id="phoneNo" name="phoneNo" />
                                
                                <label class="control-label" for="success">이메일</label>
                                <input type="text" class="form-control" id="email" name="email" />
                                
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