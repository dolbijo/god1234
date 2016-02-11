<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
	 
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		      	<div class="inputsubtitle">수정</div>
		        <form:form method="post" modelAttribute="member">
		        <table>
		                <tr>
		                <th>제목</th>
		                <td>
		                    <input type="text" name="freeboardTitle" style="width:580px" />
		                </td>
		            </tr>
		          
		                  
		          <tr>
		                <th>작성자</th>
		                <td>
		                	<input type="hidden" name="memberId" value='${ sessionScope.loginuser.memberId }' />
		                	${ sessionScope.loginuser.memberId }
		                </td>
		            </tr>
		            
		                <tr>
		                <th>질문</th>
		                <td>
		                	<textarea name="freeboardContent" style="width:580px" rows="15" value='${ freeboard1.freeboardContent }'></textarea>
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

	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>