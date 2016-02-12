<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.dolbi.model.dto.Jobboard"%>
<%@page import="com.dolbi.model.dao.JobboardDao"%>


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
		      	<div class="inputsubtitle">채용 자료 등록</div>
		        <form:form action="edit.action" method="post" enctype="multipart/form-data">
		        <input type="hidden" name="jobboardNo" value="${jobboardNo }"/>
		        <table>
		             <tr>
		                <th>제목</th>
		                <td>
		                   <input type="text" name="title" style="width:580px" value='${ jobboard.jobboardTitle }' />
		                   
		                </td>
		            </tr>
		            
		               <tr>
		                <th>회사/점포명</th>
		                <td>
		                	<input type="hidden" name="memberName" value='${ jobboard.memberName }' />
		                	${ jobboard1.memberName }
		                </td>
		            </tr>
		            
		           <tr>
		                <th>작성자</th>
		                <td>
		                	<input type="hidden" name="uploader" value='${ sessionScope.loginuser.memberId }' />
		                	${ sessionScope.loginuser.memberId }
		                </td>
		            </tr>
		             <tr>

		            </tr>
		                 
		            <tr>
		                <th>첨부자료</th>
		                <td>
		               		<input type="file" name="attach" style="width:580px;height:20px" />
		                    <c:forEach var="file" items="${jobboard.files }">
		                    	<p>${file.savedFileName }</p><br />
		                    </c:forEach>
		                </td>
		            </tr>
		            
		              <tr>
		                <th>경력요구사항</th>
		                <td>
		                    <input type="radio" name="career" value="new" value='${ jobboard.jobboardCareer }'/>신입
		             
							<input type="radio" name="career" value="old" value='${ jobboard.jobboardCareer }' />경력
							
							<input type="radio" name="career" value="none"  value='${ jobboard.jobboardCareer }'/>무관
		                </td>
		            </tr>
		          
		               <tr>
		                <th>학력</th>
		                <td>
		                    <input type="radio" name="edu" value="grade0" value='${ jobboard.jobboardEducation }'/>학력무관
							<input type="radio" name="edu" value="grade1" value='${ jobboard.jobboardEducation }'/>초졸
							<input type="radio" name="edu" value="grade2" value='${ jobboard.jobboardEducation }'/>중졸
							<input type="radio" name="edu" value="grade3" value='${ jobboard.jobboardEducation }'/>고졸
							<input type="radio" name="edu" value="grade4" value='${ jobboard.jobboardEducation }'/>초대졸
							<input type="radio" name="edu" value="grade5" value='${ jobboard.jobboardEducation }'/>초대졸이상
		                </td>
		            </tr>
		            
		            
		            
		     	         
		             <tr>
		                <th>성별</th>
		                <td>
		                    <input type="radio" name="gender" value="female" value='${ jobboard.jobboardGender }'/>여
		             
							<input type="radio" name="gender" value="male" value='${ jobboard.jobboardGender }' />남
							
							<input type="radio" name="gender" value="mf"  value='${ jobboard.jobboardGender }'/>남녀무관
		                </td>
		            </tr>
		            
		            	<tr>
		                <th>모집연령</th>
		                <td>
		          
							<select id="birthday" name="birthday">
     						<option value="none1">나이무관</option>
    							 
     							<%for(int i=1; i<=7; i++){ %>
    							 <option value="<%=i%>"><%=i*10+"살"+"이상"+(i+1)*10+"미만"%></option>
     							<%} %>
     							<option value="8">80이상</option>
 							</select>
		                </td>
		            </tr>
		            
		             <tr>
		                <th>모집인원</th>
		                <td>
		                    <input type="text" name="joinnum" style="width:100px" value='${ jobboard.jobboardJoinNo }'/> 명 
		                </td>
		            </tr>
		            
		             
		             <tr>
		                <th>급여</th>
		                <td>
		                	<input type="radio" name="payment" value="perhour" value='${ jobboard.jobboardSalary }'>시급
		                	<input type="radio" name="payment" value="perweek" value='${ jobboard.jobboardSalary }'>주급
		                	<input type="radio" name="payment" value="permonth" value='${ jobboard.jobboardSalary }'>월급
		                	<input type="text" name="salary">
		                </td>
		            </tr>
		           
		            
		            <tr>
		                <th>마감일</th>
		                <td>
							<input type ="date" name = "deadline"  value='${ jobboard.jobboardDeadLine }'>
							
		                </td>
		            </tr>
		            
		                <tr>
		                <th>전화번호</th>
		                <td>
							<input type ="text" name = "phoneNo"  value='${ jobboard.jobboardPhone }'>
							
		                </td>
		            </tr>
		            
		                <tr>
		                <th>email</th>
		                <td>
							<input type ="text" name = "email"  value='${ jobboard.jobboardemail }'>
							
		                </td>
		            </tr>
		            

		              <tr>
		                <th>상세 모집 요강</th>
		                <td>
		                	<textarea name="content" style="width:580px" rows="15" >${ jobboard.jobboardContent }</textarea>
		                </td>
		            </tr>
		            <tr>
		            	<th><label class="control-label" for="success">직종선택</label></th>
                          <td> 
                                <c:choose>
                                <c:when test="${jobboardCaNo eq 1 }">
                                    
                                	<input type="checkbox" name="ca" value="#판매"/>판매
                                	<input type="checkbox" name="ca" value="#서빙"/>서빙
                                	<input type="checkbox" name="ca" value="#안내데스크"/>안내데스크
                                	<input type="checkbox" name="ca" value="#배달"/>배달
                                	<input type="checkbox" name="ca" value="#주유"/>주유
                                	<input type="checkbox" name="ca" value="#청소"/>청소
                                	<input type="checkbox" name="ca" value="#서비스직 기타"/>서비스직 기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 2 }">
                                	<input type="checkbox" name="ca" value="#백화점"/>백화점
                                	<input type="checkbox" name="ca" value="#의류 "/>의류 
                                	<input type="checkbox" name="ca" value="#뷰티"/>뷰티
                                	<input type="checkbox" name="ca" value="#전자기기매장"/>전자기기매장
                                	<input type="checkbox" name="ca" value="#약국"/>약국
                                	<input type="checkbox" name="ca" value="#유통판매기타"/>유통판매기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 3 }">
                                	<input type="checkbox" name="ca" value="#사무보조"/>사무보조
                                	<input type="checkbox" name="ca" value="#회계"/>회계
                                	<input type="checkbox" name="ca" value="#실험"/>실험
                                	<input type="checkbox" name="ca" value="#번역"/>번역
                                	<input type="checkbox" name="ca" value="#교정"/>교정
                                	<input type="checkbox" name="ca" value="#공공기관"/>공공기관
                                	<input type="checkbox" name="ca" value="#사무직기타"/>사무직기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 4 }">
                                	<input type="checkbox" name="ca" value="#공사"/>공사
                                	<input type="checkbox" name="ca" value="#건설"/>건설
                                	<input type="checkbox" name="ca" value="#시공"/>시공
                                	<input type="checkbox" name="ca" value="#정비"/>정비
                                	<input type="checkbox" name="ca" value="#수리" />수리
                                	<input type="checkbox" name="ca" value="#설치"/>설치
                                	<input type="checkbox" name="ca" value="#건설공사기타"/>기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 5 }">
                                	<input type="checkbox" name="ca" value="#포장"/>포장
                                	<input type="checkbox" name="ca" value="#분류"/>분류
                                	<input type="checkbox" name="ca" value="#입출고"/>입출고
                                	<input type="checkbox" name="ca" value="#택배"/>택배
                                	<input type="checkbox" name="ca" value="#운전"/>운전
                                	<input type="checkbox" name="ca" value="#창고관리"/>창고관리
                                	<input type="checkbox" name="ca" value="#운송기타"/>기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 6 }">
                                	<input type="checkbox" name="ca" value="#사이트운영"/>사이트운영
                                	<input type="checkbox" name="ca" value="#게임운영"/>게임운영
                                	<input type="checkbox" name="ca" value="#컴퓨터A/S"/>컴퓨터A/S
                                	<input type="checkbox" name="ca" value="#프로그래머"/>프로그래머
                                	<input type="checkbox" name="ca" value="#IT기타"/>IT기타
                                </c:when>
                                <c:when test="${jobboardCaNo eq 7 }">
                                	<input type="checkbox" name="ca" value="#웹디자인"/>웹디자인
                                	<input type="checkbox" name="ca" value="#산업디자인"/>산업디자인
                                	<input type="checkbox" name="ca" value="#그래픽디자인"/>그래픽디자인
                                	<input type="checkbox" name="ca" value="#건축디자인"/>건축디자인
                                	<input type="checkbox" name="ca" value="#디자인기타"/>디자인기타
                                	
                                </c:when>
                                <c:when test="${jobboardCaNo eq 8 }">
                                	<input type="checkbox" name="ca" value="#보습학원강사"/>보습학원강사
                                	<input type="checkbox" name="ca" value="#외국어강사"/>외국어강사
                                	<input type="checkbox" name="ca" value="#컴퓨터강사"/>컴퓨터강사
                                	<input type="checkbox" name="ca" value="#예체능강사"/>예체능강사
                                	<input type="checkbox" name="ca" value="#유아교사"/>유아교사
                                	<input type="checkbox" name="ca" value="#보조교사"/>보조교사
                                	<input type="checkbox" name="ca" value="#학원기타"/>학원기타
                                </c:when>
                                </c:choose>
		            	</td>
		            </tr>
		            
		            
		            	            		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="수정" style="height:25px" />
		       		<input type="button" value="취소" style="height:25px" onclick="">	
		        </div>
		        </form:form>
		    </div>
		</div>   	

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>