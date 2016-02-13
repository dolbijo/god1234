<%@page import="com.dolbi.model.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dolbi.model.dao.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<html>
<head>
    	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    	<meta name="description" content="" />
    	<meta name="author" content="" />
    	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
    	
    	<script type='text/javascript'>
			function toggleCommentStatus(edit) {
				var e = document.getElementById("individualinfoeidt");
				var v = document.getElementById("individualinfo");
				if (edit) {//편집 요청
					e.style.display = "block";
					v.style.display = "none";
				} else {//편집 취소
					v.style.display = "block";
					e.style.display = "none";
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
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
    			
    		<div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    
                        <div class="panel-body" style="padding-bottom:30px">
                            <div id="individualinfo" class="table-responsive">
                                <table class="table table-hover">
                                    <tbody>
                                    	<tr>
                                            <td><b>아이디</b></td>
        									<td>${ loginuser.memberId }</td>
                                        </tr>
                                        <tr>
                                            <td><b>이름</b></td>
        									<td>${ member.memberName }</td>
                                        </tr>
                                        <tr>
                                            <td><b>성별</b></td>
        									<td>${ member.gender }</td>
                                        </tr>
                                        <tr>
                                            <td><b>생년월일</b></td>
        									<td>${ member.age }</td>
                                        </tr>
                                        <tr>
                                            <td><b>전화번호</b></td>
        									<td>0${ member.phoneNo }</td>
                                        </tr>
                                        <tr>
                                            <td><b>이메일</b></td>
        									<td>${ member.email }</td>
                                        </tr>
                                        <tr>
                                            <td><b>주소</b></td>
        									<td>${ member.memberAddress }</td>
                                        </tr>
                                        <tr>
                                            <td><b>선호하는 직종</b></td>
        									<td>
        									<c:forEach var="likedcategory" items="${likedcategorylist }">
        										<c:choose>
	        										<c:when test="${likedcategory.categoryName eq 'service'}">
	        											[서비스]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'sale'}">
	        											[유통/판매]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'office'}">
	        											[사무직]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'construction'}">
	        											[건설/공사]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'production'}">
	        											[운송]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'it'}">
	        											[IT]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'design'}">
	        											[디자인]
	        										</c:when>
	        										<c:when test="${likedcategory.categoryName eq 'education'}">
	        											[교육]
	        										</c:when>
        										</c:choose>
        									</c:forEach>
        									</td>
                                        </tr>
                                        <tr>
                                        	<td colspan="2">
                                        		<br />
	                                        	<div align="center">
									                <a href="javascript:toggleCommentStatus(true);" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span>개인정보 수정</a>
									    			<c:choose>
									            	<c:when test="${ resume eq '0' }">
									            	<a href="resumeform.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span> &nbsp;이력서 등록 </a>&nbsp;
									            	</c:when>
									        		<c:otherwise>
									        		<a href="resumeview.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span> &nbsp;이력서 관리 </a>&nbsp;
									        		</c:otherwise>
									        		</c:choose>
									    			<a href="applicationlist.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-list"></span> &nbsp;지원현황 </a>&nbsp;
									    			<a href="recommendationlist.action?memberId=${ loginuser.memberId }" class="btn btn-info"><span class="glyphicon glyphicon-thumbs-up"></span> &nbsp;맞춤알바정보 </a>&nbsp;
									    		</div>
                                        	</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <div id="individualinfoeidt" class="table-responsive" style="display: none">
                            	<form id="individualditform" action="updateindividaul.action" method="post">
                            	<input type="hidden" name="memberId" value="${ loginuser.memberId }" />
                                <table class="table table-hover">
                                    <tbody>
                                    	<tr>
                                            <td><b>아이디</b></td>
        									<td>${ loginuser.memberId }</td>
                                        </tr>
                                        <tr>
                                            <td><b>이름</b></td>
        									<td><input type="text" class="form-control" name="memberName" value="${ loginuser.memberName }"/></td>
                                        </tr>
                                        <tr>
                                            <td><b>성별</b></td>
        									<td>
        										<input type="radio" class="form-control" name="gender" value="male" style="heignt:100px;width:20px;display: inline;">남자
                                				<input type="radio" class="form-control" name="gender" value="female" style="heignt:100px;width:20px;display: inline;">여자
    										</td>
                                        </tr>
                                        <tr>
                                            <td><b>생년월일</b></td>
        									<td><input type="date" class="form-control" name="age" value="${ member.age }" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>전화번호</b></td>
        									<td><input type="text" class="form-control" name="phoneNo" value="${ loginuser.phoneNo }" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>이메일</b></td>
        									<td><input type="text" class="form-control" name="email" value="${ loginuser.email }" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>주소</b></td>
        									<td><input type="text" class="form-control" name="memberAddress" value="${ loginuser.memberAddress }"/></td>
                                        </tr>
                                        <tr>
                                            <td><b>선호하는 직종</b></td>
        									<td>
        									<input type="checkbox" name="service" value="1">서비스
                                			<input type="checkbox" name="sale" value="2">영업
                                			<input type="checkbox" name="office" value="3">사무직
                                			<input type="checkbox" name="construction" value="4">건설
                                			<input type="checkbox" name="procuction" value="5">생산
                                			<input type="checkbox" name="it" value="6">IT/프로그래밍
                                			<input type="checkbox" name="design" value="7">디자인
                                			<input type="checkbox" name="education" value="8">교육/강사
        									<c:forEach var="likedcategory" items="${likedcategorylist }">
        										${likedcategory.categoryName } | 
        									</c:forEach>
        									</td>
                                        </tr>
                                        <tr>
                                        	<td colspan="2">
                                        		<div align="center">
                                        			<a href="javascript:document.getElementById('individualditform').submit();" class="btn btn-info">수정</a>&nbsp;&nbsp;
                                        			<a href="javascript:toggleCommentStatus(false);" class="btn btn-info">취소</a>
                                        		</div>
                                        	</td>
                                        </tr>
                                    </tbody>
                                </table>
                                </form>
                            </div>
                        
                    </div>
                    <!-- End  Hover Rows  -->
    			</div>
    		</div>
    	</div>
    </div>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>









