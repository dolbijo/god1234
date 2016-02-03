<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>사용자등록</title>
	<link rel="Stylesheet" href="/spring-mvc-demoweb5/resources/styles/default.css" />
	<link rel="Stylesheet" href="/spring-mvc-demoweb5/resources/styles/input.css" />
</head>
<body>

	<div id="pageContainer">
	
		<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		      	<div class="inputsubtitle">채용 자료 등록</div>
		        <form:form method="post" modelAttribute="member">
		        <table>
		             <tr>
		                <th>제목</th>
		                <td>
		                    <input type="text" name="title" style="width:580px" />
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
		                </td>
		            </tr>
		            
		            <tr>
		                <th>상세 모집 요강</th>
		                <td>
		                	<textarea name="content" style="width:580px" rows="15"></textarea>
		                </td>
		            </tr>
		         
		            <tr>
		                <th>마감일</th>
		                <td>
							<input type ="date" name = "deadline">
							
		                </td>
		            </tr>
		            
		            
		      <tr>
		                <th>나이</th>
		                <td>
		          
					<select id="birthday" name="birthday">
     <option value="">출생년도 선택</option>
     <%for(int i=1950; i<=2010; i++){ %>
     <option value="<%=i%>"><%=i+"년"%></option>
     <%} %>
 </select>
		
		                </td>
		            </tr>
		            <tr>
		                <th>모집인원</th>
		                <td>
		                    <input type="text" name="joinnum" style="width:100px"> 명 </input>
		                </td>
		            </tr>
		            
		             <tr>
		                <th>성별</th>
		                <td>
		                    <input type="radio" name="gender" value="female" />여
		             
							<input type="radio" name="gender" value="male" />남
							
							<input type="radio" name="gender" value="mf" />남녀무관
		                </td>
		            </tr>
		              <tr>
		                <th>학력</th>
		                <td>
		                    <input type="radio" name="edu" value="grade0" />학력무관
							<input type="radio" name="edu" value="grade1" />초졸
							<input type="radio" name="edu" value="grade2" />중졸
							<input type="radio" name="edu" value="grade3" />고졸
							<input type="radio" name="edu" value="grade4" />초대졸
							<input type="radio" name="edu" value="grade5" />초대졸이상
		                </td>
		            </tr>
		            
		             <tr>
		                <th>급여</th>
		                <td>
		                	<input type="radio" name="payment" value="perhour">시급
		                	<input type="radio" name="payment" value="perweek">주급
		                	<input type="radio" name="payment" value="permonth">월급
		                	<input type="text" name="salary">
		                </td>
		            </tr>
		            
		             <tr>
		                <th>경력정보</th>
		                <td>
		                    <input type="radio" name="career" value="old" />
		                    <label for="radio1">경력</label>
							<input type="radio" name="career" value="new" />
							<label for="radio2">신입</label>
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
	
	</div>

</body>
</html>