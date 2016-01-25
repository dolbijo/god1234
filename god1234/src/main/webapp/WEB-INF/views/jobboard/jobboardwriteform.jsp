<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="EUC-KR" />
	<title>자료업로드</title>
	<link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
	<link rel="Stylesheet" href="/dolbi/resources/styles/input2.css" />
</head>
<body>

	<div id="pageContainer">
	
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
	
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">채용 자료 정보</div>
		        <form action="write.action" method="post" enctype="multipart/form-data">
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
		                <th>첨부자료</th>
		                <td>
		                    <input type="file" name="attach" style="width:580px;height:20px" />
		                </td>
		            </tr>
		            <tr>
		                <th>채용내용</th>
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
		                <th>성별</th>
		                <td>
		                    <input type="radio" name="radio" id="radio1" value="Y" />
		                    <label for="radio1">남</label>
							<input type="radio" name="radio" id="radio2" value="N" />
							<label for="radio2">여</label>
		                </td>
		            </tr>
		              <tr>
		                <th>학력</th>
		                <td>
		                    <input type="radio" name="radio" id="radio1" value="Y" />
		                    <label for="radio1">학력무관</label>
							<input type="radio" name="radio" id="radio2" value="N" />
							<label for="radio2">초졸</label>
							<input type="radio" name="radio" id="radio3" value="N" />
							<label for="radio2">중졸</label>
							<input type="radio" name="radio" id="radio4" value="N" />
							<label for="radio2">고졸</label>
							<input type="radio" name="radio" id="radio5" value="N" />
							<label for="radio2">초대졸</label>
							<input type="radio" name="radio" id="radio6" value="N" />
							<label for="radio2">초대졸이상</label>
		                </td>
		            </tr>
		            
		             <tr>
		                <th>급여</th>
		                <td>
		                	<input type="radio" name="radio" id="radio1" value="Y" />
		                    <label for="radio1">시급</label>
		                     <input type="text" name="title" style="width:100px" />
							<input type="radio" name="radio" id="radio2" value="N" />
							<label for="radio2">월급</label>
							<input type="text" name="title" style="width:100px" />
							<input type="radio" name="radio" id="radio2" value="N" />
							<label for="radio2">주급</label>
							<input type="text" name="title" style="width:100px" />
		                    
		                </td>
		            </tr>
		            
		             <tr>
		                <th>경력정보</th>
		                <td>
		                    <input type="radio" name="radio" id="radio1" value="Y" />
		                    <label for="radio1">경력</label>
							<input type="radio" name="radio" id="radio2" value="N" />
							<label for="radio2">신입</label>
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
<div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>

</body>
</html>