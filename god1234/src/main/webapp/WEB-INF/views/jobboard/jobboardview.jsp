<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<title>자료업로드</title>
	
</head>
<body>

	<div id="pageContainer">
	
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		
		<div style="color:black;padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">업로드 자료 정보</div>
		        <table>
		            <tr class="info">
		                <th>제목</th>
		                <td>${ jobboard.jobboardTitle }</td>
		                
		            </tr>
		               <tr>
		                <th>회사/점포명</th>
		                <td>
		                	
		                	${ jobboard.memberName }
		                </td>
		            </tr>
		            <tr>
		                <th>작성자</th>
		                <td>${ jobboard.memberId }</td>
		            </tr>
		            <tr>
		            	<th>마감일자</th>
		            	<td><fmt:formatDate value="${ jobboard.jobboardDeadLine}" type="date"/></td>
		            </tr>
		         
		            <tr>
		            	<th>상세 모집 요강</th>
		            	<td>${ jobboard.jobboardContent }</td>
		            </tr>
		            <tr>
		            	<th>나이</th>
		            	<td>${ jobboard.jobboardAge }</td>
		            </tr>
		            <tr>
		            	<th>모집인원</th>
		            	<td>${ jobboard.jobboardJoinNo }</td>
		            </tr>
		            <tr>
		            	<th>성별</th>
		            	<td>
		            		<c:choose>
						
            			<c:when test="${ jobboard.jobboardGender eq 'male' }">
		            		남성
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardGender eq 'female' }">
		            		여성
		            	</c:when>
		            	
		        		<c:otherwise>
		        			남여무관
		        		</c:otherwise>
		        		
		        		</c:choose>
		            	</td>
		            </tr>
		            <tr>
		            	 <th>학력</th>
		            	<td>
		            	<c:choose>
						
            			<c:when test="${ jobboard.jobboardEducation eq 'grade0' }">
		            		초졸
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardEducation eq 'grade1' }">
		            		중졸
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardEducation eq 'grade2' }">
		            		고졸
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardEducation eq 'grade3' }">
		            		대졸
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardEducation eq 'grade4' }">
		            		초대졸
		            	</c:when>
		            	
		        		<c:otherwise>
		        			학력 무관
		        		</c:otherwise>
		        		
		        		</c:choose>
		            	
		            	</td>
		            </tr>
		            <tr>
		            	 <th>급여</th>
		            	<td>
		            	
		            	<c:choose>
						
            			<c:when test="${ jobboard.jobboardPayment eq 'permonth' }">
		            		월급
		            	</c:when>
		            	
		            	<c:when test="${ jobboard.jobboardPayment eq 'perweek' }">
		            		주급
		            	</c:when>
		            	
		        		<c:otherwise>
		        			시급
		        		</c:otherwise>
		        		
		        		</c:choose>
					
					 / <fmt:formatNumber type="number" maxFractionDigits="3" value="${ jobboard.jobboardSalary }" />원
		            	
		            	</td>
		            </tr>
		            <tr>
		            	<th>경력정보</th>
		            	<td>
		            	<c:choose>
		            	<c:when test="${ jobboard.jobboardCareer eq 'new' }">
		            		신입
		            	</c:when>
		            	<c:otherwise>
		            		경력
		            	</c:otherwise>
		            	</c:choose>
		            	</td>
		            </tr>
		            
		             
		            
		        </table>
		        <div class="buttons">
		        	[<a href="application.action?memberId=${ loginuser.memberId }&jobboardNo=${jobboard.jobboardNo}">지원하기</a>]
		        	<a href="edit.action?jobboardno=${ jobboard.jobboardNo }">정보수정</a>
		        	<input type="button" value="취소" style="height:25px" onclick="location.href='list.action';" />
		        </div>
		    </div>
		</div>   	
	
	</div>
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>

</body>
</html>