<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% String cp = request.getContextPath(); %>
<%
        pageContext.setAttribute("cr", "\r");  // Space
        pageContext.setAttribute("cn", "\n");  // Enter
        pageContext.setAttribute("crcn", "\r\n");  // Space, Enter
        pageContext.setAttribute("br", "<br/>");  // <br> tag
 %>

<!DOCTYPE html>

<html>
<head>
	<script type='text/javascript'>
	
		
		function application(memberId, jobboardNo) {
			if (confirm( "지원을 완료할까" )) {
				 location.href = "application.action?memberId=" + memberId + "&jobboardNo=" + jobboardNo; 
			}
		}	
	</script>

	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    	<meta name="description" content="" />
    	<meta name="author" content="" />
    	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
</head>


<body>
	
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<div class="content-wrapper">
		<div class="container">
	
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 채용정보</h4>
				</div>
			</div>
			<div class="row">
   
				<div class="col-md-12">
		            <div class="alert alert-success">
		            	<h3 align="center"><b>${ jobboard.jobboardTitle }</b></h3>
		            </div>
                </div>
                
                <div class="col-md-12">
                	<table style="width: 80%;text-align: left;border:0px">
	                	<tr>
	                		<td colspan="8" style="width: 50%">
	                			<c:forEach var="file" items="${jobboard.files }">
									<img src="<%=cp%>/resources/uploadfiles/${file.savedFileName }" style="width: 100%;height: 400px;"/></img><br />
								</c:forEach>
	                		</td>
	                		<td style="padding-left: 20px;">
	                			<h4><b>모집 정보</b></h4>
                				<hr />
                				<b>회사/점포명 </b>&nbsp;
				                ${ jobboard.memberName }
				                <br />
				            	<b>성별</b> &nbsp;
				            	<c:choose>
		            				<c:when test="${ jobboard.jobboardGender eq 'male' }">남성</c:when>
				            		<c:when test="${ jobboard.jobboardGender eq 'female' }">여성</c:when>
				        			<c:otherwise>남여무관</c:otherwise>
				        		</c:choose>
				   				<br />
				            	<b>모집연령</b>
				            	<c:choose>
				            		<c:when test="${ jobboard.jobboardAge eq 'none1' }">나이 무관</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '1' }">10세 이상 20세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '2' }">20세 이상 30세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '3' }">30세 이상 40세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '4' }">40세 이상 50세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '5' }">50세 이상 60세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '6' }">60세 이상 70세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '7' }">70세 이상 80세 미만</c:when>
					            	<c:when test="${ jobboard.jobboardAge eq '1' }">80세 이상</c:when>
				            	</c:choose>
				            	<br />
				            	<b>경력정보</b>&nbsp;
				            	<c:choose>
					            	<c:when test="${ jobboard.jobboardCareer eq 'new' }">신입</c:when>
					            	<c:otherwise>경력</c:otherwise>
					            </c:choose>
					            <br />
					            <b>학력</b>&nbsp;
				            	<c:choose>
		            			<c:when test="${ jobboard.jobboardEducation eq 'grade0' }">초졸</c:when>
				            	<c:when test="${ jobboard.jobboardEducation eq 'grade1' }">중졸</c:when>
				            	<c:when test="${ jobboard.jobboardEducation eq 'grade2' }">고졸</c:when>
				            	<c:when test="${ jobboard.jobboardEducation eq 'grade3' }">대졸</c:when>
				            	<c:when test="${ jobboard.jobboardEducation eq 'grade4' }">초대졸</c:when>
				        		<c:otherwise>학력 무관</c:otherwise>
				        		</c:choose>
								<br />
				            	<b>모집인원</b>&nbsp;
				            	${ jobboard.jobboardJoinNo }명
				            	<br />
								<b>급여</b>&nbsp;
				            	<c:choose>
			            			<c:when test="${ jobboard.jobboardPayment eq 'permonth' }">[월급]</c:when>
					            	<c:when test="${ jobboard.jobboardPayment eq 'perweek' }">[주급]</c:when>
					        		<c:otherwise>[시급]</c:otherwise>
				        		</c:choose>
							  	<fmt:formatNumber type="number" maxFractionDigits="3" value="${ jobboard.jobboardSalary }" />원
				         		<br />
				            	<b>채용 마감일자</b>&nbsp;
				            	<fmt:formatDate value="${ jobboard.jobboardDeadLine}" type="date"/>
				            	<br />
				            	<b>담당자 전화번호</b>&nbsp;
				            	${ jobboard.jobboardPhone }
				            	<br />
				            	<b>담당자 email</b>&nbsp;
				            	${ jobboard.jobboardemail }
				            	
				            </td>
				    	</tr>
                	</table>
                </div>
                <br />
                <div class="col-md-12">
	                <h4><b>상세 모집 정보</b></h4>
	                <hr />
	                ${fn:replace(jobboard.jobboardContent, cn, br)}
                </div>
  				<br />
                <div class="col-md-12">
					<h4><b>회사 정보</b></h4>
	                <hr />
	                <b>회사/점포명 </b>&nbsp;
				    ${ company.memberName }
				    <br />
				    <b>회사/점포 주소 </b>&nbsp;
				    ${ company.memberAddress }
				    <br />
				    <b>회사/점포 홈페이지 </b>&nbsp;
				    ${ company.homepage }
				    <br />
                </div>

				        
				<div class="buttons" style="margin: 40px 0 60px 0;" align="center">
					<c:if test="${ loginuser.memberType eq 'individual' }">
				    	<a href="javascript:application('${loginuser.memberId}', ${ jobboard.jobboardNo })" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span>지원하기</a>
				    </c:if>
				    <c:if test="${ (loginuser.memberType eq 'company') }">
				        <c:if test="${ (loginuser.memberId eq jobboard.memberId) }">
				        	<a href="edit.action?jobboardNo=${ jobboard.jobboardNo }&memberId=${loginuser.memberId}" class="btn btn-info"><span class="glyphicon glyphicon-list-alt"></span>정보수정</a>
				        </c:if>
					</c:if>
				</div>
			</div>
		</div>  
		</div> 
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />


</body>
</html>