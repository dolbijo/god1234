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
                               
                                	<input type="checkbox" name="ca" value="#판매"/>판매
                                	<input type="checkbox" name="ca" value="#서빙"/>서빙
                                	<input type="checkbox" name="ca" value="#안내데스크"/>안내데스크
                                	<input type="checkbox" name="ca" value="#배달"/>배달
                                	<input type="checkbox" name="ca" value="#주유"/>주유
                                	<input type="checkbox" name="ca" value="#청소"/>청소
                                	<input type="checkbox" name="ca" value="#서비스직 기타"/>서비스직 기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#백화점"/>백화점
                                	<input type="checkbox" name="ca" value="#의류 "/>의류 
                                	<input type="checkbox" name="ca" value="#뷰티"/>뷰티
                                	<input type="checkbox" name="ca" value="#전자기기매장"/>전자기기매장
                                	<input type="checkbox" name="ca" value="#약국"/>약국
                                	<input type="checkbox" name="ca" value="#유통판매기타"/>유통판매기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#사무보조"/>사무보조
                                	<input type="checkbox" name="ca" value="#회계"/>회계
                                	<input type="checkbox" name="ca" value="#실험"/>실험
                                	<input type="checkbox" name="ca" value="#번역"/>번역
                                	<input type="checkbox" name="ca" value="#교정"/>교정
                                	<input type="checkbox" name="ca" value="#공공기관"/>공공기관
                                	<input type="checkbox" name="ca" value="#사무직기타"/>사무직기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#공사"/>공사
                                	<input type="checkbox" name="ca" value="#건설"/>건설
                                	<input type="checkbox" name="ca" value="#시공"/>시공
                                	<input type="checkbox" name="ca" value="#정비"/>정비
                                	<input type="checkbox" name="ca" value="#수리" />수리
                                	<input type="checkbox" name="ca" value="#설치"/>설치
                                	<input type="checkbox" name="ca" value="#기타"/>기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#포장"/>포장
                                	<input type="checkbox" name="ca" value="#분류"/>분류
                                	<input type="checkbox" name="ca" value="#입출고"/>입출고
                                	<input type="checkbox" name="ca" value="#택배"/>택배
                                	<input type="checkbox" name="ca" value="#운전"/>운전
                                	<input type="checkbox" name="ca" value="#창고관리"/>창고관리
                                	<input type="checkbox" name="ca" value="#기타"/>기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#사이트운영"/>사이트운영
                                	<input type="checkbox" name="ca" value="#게임운영"/>게임운영
                                	<input type="checkbox" name="ca" value="#컴퓨터A/S"/>컴퓨터A/S
                                	<input type="checkbox" name="ca" value="#프로그래머"/>프로그래머
                                	<input type="checkbox" name="ca" value="#IT기타"/>IT기타
                                
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#웹디자인"/>웹디자인
                                	<input type="checkbox" name="ca" value="#산업디자인"/>산업디자인
                                	<input type="checkbox" name="ca" value="#그래픽디자인"/>그래픽디자인
                                	<input type="checkbox" name="ca" value="#건축디자인"/>건축디자인
                                	<input type="checkbox" name="ca" value="#디자인기타"/>디자인기타
                                	
                            
                              
                                	<input type="checkbox" name="ca" value="#전체"/>전체
                                	<input type="checkbox" name="ca" value="#보습학원강사"/>보습학원강사
                                	<input type="checkbox" name="ca" value="#외국어강사"/>외국어강사
                                	<input type="checkbox" name="ca" value="#컴퓨터강사"/>컴퓨터강사
                                	<input type="checkbox" name="ca" value="#예체능강사"/>예체능강사
                                	<input type="checkbox" name="ca" value="#유아교사"/>유아교사
                                	<input type="checkbox" name="ca" value="#보조교사"/>보조교사
                                	<input type="checkbox" name="ca" value="#학원기타"/>학원기타
                                
                              
                                
                                
                                <input type="submit" value="등록"  class="button btn btn-success btn-large"/>
		        				<input type="button" value="취소" onclick="location.href='list.action';" class="button btn btn-success btn-large"/>
    
    					</div>
    				</div>
                </div>
    			
    		</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>