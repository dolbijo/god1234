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
	
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">알바 TALK 게시판</div>
		        <form action="write.action" method="post">
		        <table>
		        	<tr>
		        		<th></th>
		        		<td>
		        			<select name="freeboardtype">
		        				<option value="freetalk">공감TALK</option>
		        				<option value="infotalk">정보TALK</option>
		        			</select>
		        		</td>
		        	</tr>
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
		                <th>질문 </th>
		                <td>
		                	<textarea name="freeboardContent" style="width:580px" rows="15"></textarea>
		                </td>
		            </tr>
		 
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="자료등록" style="height:25px" onclick="document.forms[0].submit();" />
		        	<input type="button" value="취소" style="height:25px" onclick="location.href='list.action';" />
		        </div>
		        </form>
		    </div>
		</div>   	

	</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>