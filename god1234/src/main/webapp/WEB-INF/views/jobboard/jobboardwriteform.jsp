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
    						<form action="write.action" method="post" style="padding-left: 200px;padding-right: 200px;" enctype="multipart/form-data"><!-- 상대경로표시 -->
    							<label class="control-label" for="success">제목</label>
                                <input type="text" class="form-control" name="title"/>
    							
    							<label class="control-label" for="success">회사/점포명</label>
                                <input type="text" class="form-control" name="memberName" value='${ sessionScope.loginuser.memberName }'
		                	     ${ sessionScope.loginuser.memberName } />
                                
                                <label class="control-label" for="success">작성자</label>
                                <input type="text" class="form-control" name="uploader" class="form-control" 
                                value='${ loginuser.memberId }'${ loginuser.memberId }/>
                                
                                <label class="control-label" for="success">첨부파일</label>
                                 <input type="file" class="form-control" name="attach" style="height:50px" />
                               
                                
                                <label class="control-label" for="success">상세 모집 요강</label>
                               <textarea name="content" class="form-control" rows="15"></textarea>
                                
                                <label class="control-label" for="success">경력사항</label>
                                <input type="radio" class="form-control" id="career" name="career" value="new" style="heignt:100px;width:20px;display: inline;">신입
                                <input type="radio" class="form-control" id="career" name="career" value="old" style="heignt:100px;width:20px;display: inline;">경력
    							<input type="radio" class="form-control" id="career" name="career" value="none" style="heignt:100px;width:20px;display: inline;">경력무관
                                
                                <label class="control-label" for="success">성별</label>
                                <input type="radio" class="form-control" id="gender" name="gender" value="male" style="heignt:100px;width:20px;display: inline;">남자
                                <input type="radio" class="form-control" id="gender" name="gender" value="female" style="heignt:100px;width:20px;display: inline;">여자
    							<input type="radio" class="form-control" id="gender" name="gender" value="mf" style="heignt:100px;width:20px;display: inline;">성별무관
    							
    							<label class="control-label" for="success">모집 연령</label>
                                <select id="birthday" name="birthday" class="form-control" value="selectbirth">
                                <option value="">나이무관</option>
    							 
     							<%for(int i=1; i<=7; i++){ %>
    							 <option value="<%=i%>"><%=i*10+"살"+"이상"+(i+1)*10+"이하"%></option>
     							<%} %>
     							<option value="">80이상</option>
     							</select>
                            
                            	<label class="control-label" for="success">모집인원</label>
                                <input type="text" class="form-control" name="joinnum" />
                                
                                <label class="control-label" for="success">급료지급주기</label>
                                <input type="radio" class="form-control" name="payment" value="permonth" style="heignt:100px;width:20px;display: inline;"/>월급
                                <input type="radio" class="form-control" name="payment" value="perweek" style="heignt:100px;width:20px;display: inline;"/>주급
                                <input type="radio" class="form-control" name="payment" value="perhour" style="heignt:100px;width:20px;display: inline;"/>시급
                                
                                <label class="control-label" for="success">급료</label>
                                <input type="text" class="form-control" name="salary" />
                                
                                <label class="control-label" for="success">마감일자</label>
                                <input type="date" class="form-control" name="deadline" />
                                
    							<label class="control-label" for="success">전화번호</label>
                                <input type="text" class="form-control" id="phoneNo" name="phoneNo" />
                                
                                <label class="control-label" for="success">이메일</label>
                                <input type="text" class="form-control" id="email" name="email" style="margin-bottom:15px;"/>
                                
                                <c:choose>
                                <c:when test="${jobboardNo eq 1 }">
                                	<input type="checkbox" name="ca" value="#판매"/>판매
                                	<input type="checkbox" name="ca" value="#서빙"/>서빙
                                	<input type="checkbox" name="ca" value="#안내데스크"/>안내데스크
                                	<input type="checkbox" name="ca" value="#배달"/>배달
                                	<input type="checkbox" name="ca" value="#주유"/>주유
                                	<input type="checkbox" name="ca" value="#청소"/>청소
                                	<input type="checkbox" name="ca" value="#서비스직 기타"/>서비스직 기타
                                </c:when>
                                <c:when test="${jobboardNo eq 2 }">
                                	<input type="checkbox" name="ca" value="#백화점"/>백화점
                                	<input type="checkbox" name="ca" value="#의류 "/>의류 
                                	<input type="checkbox" name="ca" value="#뷰티"/>뷰티
                                	<input type="checkbox" name="ca" value="#전자기기매장"/>전자기기매장
                                	<input type="checkbox" name="ca" value="#약국"/>약국
                                	<input type="checkbox" name="ca" value="#유통판매기타"/>유통판매기타
                                </c:when>
                                <c:when test="${jobboardNo eq 3 }">
                                	<input type="checkbox" name="ca" value="#사무보조"/>사무보조
                                	<input type="checkbox" name="ca" value="#회계"/>회계
                                	<input type="checkbox" name="ca" value="#실험"/>실험
                                	<input type="checkbox" name="ca" value="#번역"/>번역
                                	<input type="checkbox" name="ca" value="#교정"/>교정
                                	<input type="checkbox" name="ca" value="#공공기관"/>공공기관
                                	<input type="checkbox" name="ca" value="#사무직기타"/>사무직기타
                                </c:when>
                                <c:when test="${jobboardNo eq 4 }">
                                	<input type="checkbox" name="ca" value="#공사"/>공사
                                	<input type="checkbox" name="ca" value="#건설"/>건설
                                	<input type="checkbox" name="ca" value="#시공"/>시공
                                	<input type="checkbox" name="ca" value="#정비"/>정비
                                	<input type="checkbox" name="ca" value="#수리" />수리
                                	<input type="checkbox" name="ca" value="#설치"/>설치
                                	<input type="checkbox" name="ca" value="#건설공사기타"/>기타
                                </c:when>
                                <c:when test="${jobboardNo eq 5 }">
                                	<input type="checkbox" name="ca" value="#포장"/>포장
                                	<input type="checkbox" name="ca" value="#분류"/>분류
                                	<input type="checkbox" name="ca" value="#입출고"/>입출고
                                	<input type="checkbox" name="ca" value="#택배"/>택배
                                	<input type="checkbox" name="ca" value="#운전"/>운전
                                	<input type="checkbox" name="ca" value="#창고관리"/>창고관리
                                	<input type="checkbox" name="ca" value="#운송기타"/>기타
                                </c:when>
                                <c:when test="${jobboardNo eq 6 }">
                                	<input type="checkbox" name="ca" value="#사이트운영"/>사이트운영
                                	<input type="checkbox" name="ca" value="#게임운영"/>게임운영
                                	<input type="checkbox" name="ca" value="#컴퓨터A/S"/>컴퓨터A/S
                                	<input type="checkbox" name="ca" value="#프로그래머"/>프로그래머
                                	<input type="checkbox" name="ca" value="#IT기타"/>IT기타
                                </c:when>
                                <c:when test="${jobboardNo eq 7 }">
                                	<input type="checkbox" name="ca" value="#웹디자인"/>웹디자인
                                	<input type="checkbox" name="ca" value="#산업디자인"/>산업디자인
                                	<input type="checkbox" name="ca" value="#그래픽디자인"/>그래픽디자인
                                	<input type="checkbox" name="ca" value="#건축디자인"/>건축디자인
                                	<input type="checkbox" name="ca" value="#디자인기타"/>디자인기타
                                	
                                </c:when>
                                <c:when test="${jobboardNo eq 8 }">
                                	<input type="checkbox" name="ca" value="#보습학원강사"/>보습학원강사
                                	<input type="checkbox" name="ca" value="#외국어강사"/>외국어강사
                                	<input type="checkbox" name="ca" value="#컴퓨터강사"/>컴퓨터강사
                                	<input type="checkbox" name="ca" value="#예체능강사"/>예체능강사
                                	<input type="checkbox" name="ca" value="#유아교사"/>유아교사
                                	<input type="checkbox" name="ca" value="#보조교사"/>보조교사
                                	<input type="checkbox" name="ca" value="#학원기타"/>학원기타
                                </c:when>
                                </c:choose>
                                
                                <div style="margin-top:30px;">
                                <input type="submit" value="등록"  class="button btn btn-success btn-large"/>
		        				<input type="button" value="취소" onclick="location.href='list.action';" class="button btn btn-success btn-large"/>
		        				</div>
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