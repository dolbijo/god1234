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
		        <form:form method="post" modelAttribute="jobboard" >
		        
		        <table>
		             <tr>
		                <th>제목</th>
		                <td>
		                   <input type="text" name="title" style="width:580px" value='${ jobboard1.jobboardTitle }' />
		                   
		                </td>
		            </tr>
		            
		               <tr>
		                <th>회사/점포명</th>
		                <td>
		                	<input type="hidden" name="memberName" value='${ jobboard1.memberName }' />
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
		                    <c:forEach var="file" items="${jobboard1.files }">
		                    	<p>${file.savedFileName }</p><br />
		                    </c:forEach>
		                </td>
		            </tr>
		            
		              <tr>
		                <th>경력요구사항</th>
		                <td>
		                    <input type="radio" name="career" value="new" value='${ jobboard1.jobboardCareer }'/>신입
		             
							<input type="radio" name="career" value="old" value='${ jobboard1.jobboardCareer }' />경력
							
							<input type="radio" name="career" value="none"  value='${ jobboard1.jobboardCareer }'/>무관
		                </td>
		            </tr>
		          
		               <tr>
		                <th>학력</th>
		                <td>
		                    <input type="radio" name="edu" value="grade0" value='${ jobboard1.jobboardEducation }'/>학력무관
							<input type="radio" name="edu" value="grade1" value='${ jobboard1.jobboardEducation }'/>초졸
							<input type="radio" name="edu" value="grade2" value='${ jobboard1.jobboardEducation }'/>중졸
							<input type="radio" name="edu" value="grade3" value='${ jobboard1.jobboardEducation }'/>고졸
							<input type="radio" name="edu" value="grade4" value='${ jobboard1.jobboardEducation }'/>초대졸
							<input type="radio" name="edu" value="grade5" value='${ jobboard1.jobboardEducation }'/>초대졸이상
		                </td>
		            </tr>
		            
		            
		            
		     	         
		             <tr>
		                <th>성별</th>
		                <td>
		                    <input type="radio" name="gender" value="female" value='${ jobboard1.jobboardGender }'/>여
		             
							<input type="radio" name="gender" value="male" value='${ jobboard1.jobboardGender }' />남
							
							<input type="radio" name="gender" value="mf"  value='${ jobboard1.jobboardGender }'/>남녀무관
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
		                    <input type="text" name="joinnum" style="width:100px" value='${ jobboard1.jobboardJoinNo }'/> 명 
		                </td>
		            </tr>
		            
		             
		             <tr>
		                <th>급여</th>
		                <td>
		                	<input type="radio" name="payment" value="perhour" value='${ jobboard1.jobboardSalary }'>시급
		                	<input type="radio" name="payment" value="perweek" value='${ jobboard1.jobboardSalary }'>주급
		                	<input type="radio" name="payment" value="permonth" value='${ jobboard1.jobboardSalary }'>월급
		                	<input type="text" name="salary">
		                </td>
		            </tr>
		           
		            
		            <tr>
		                <th>마감일</th>
		                <td>
							<input type ="date" name = "deadline"  value='${ jobboard1.jobboardDeadLine }'>
							
		                </td>
		            </tr>
		            
		                <tr>
		                <th>전화번호</th>
		                <td>
							<input type ="text" name = "phoneNo"  value='${ jobboard1.jobboardPhone }'>
							
		                </td>
		            </tr>
		            
		                <tr>
		                <th>email</th>
		                <td>
							<input type ="text" name = "email"  value='${ jobboard1.jobboardemail }'>
							
		                </td>
		            </tr>
		            
		            
		      	
		           
		            
		         
		          
		        
		            
		              <tr>
		                <th>상세 모집 요강</th>
		                <td>
		                	<textarea name="content" style="width:580px" rows="15" >${ jobboard1.jobboardContent }</textarea>
		                </td>
		            </tr>
		            
		            	            		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="수정" style="height:25px" />
		        	<%-- <input type="button" value="취소" style="height:25px"
		        		onclick="location.href='view.action?memberid=${ param.memberid }';" /> --%>
		       
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='view.action?memberid=${ member.memberId }';" />
		        </div>
		        </form:form>
		    </div>
		</div>   	
	
	


	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>