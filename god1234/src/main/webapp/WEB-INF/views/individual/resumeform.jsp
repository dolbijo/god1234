<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>

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
    				<h4 class="page-head-line">${ loginuser.memberId }님 개인페이지 </h4>
    			</div>
    		</div>
    			<br />
	
		<section class="featured">
			<div class="container"> 
				<div class="row mar-bot40">
					<div class="col-md-6 col-md-offset-3">
						<div class="align-center">
    						입력 받아야 할것 : 이력서 사진 / 경력사항 / 학력
    						자기소개 / 공개여부 
    						
    						<form action="resumeform.action" method="post" enctype="multipart/form-data">
    						<input type="hidden" name="memberId" value="${ loginuser.memberId }" />
    						<table border="1">
    							<tr>
    								<td>이력서 제목</td>
    								<td colspan="3"><input type="text" name="resumetitle" /></td>
    							</tr>
    							<tr>
    								<td colspan="2">이력서 사진</td>
    								<td colspan="2"><input type="file" name="resumephoto" /></td>
    							</tr>
    							<tr>
    								<td>이름</td>
    								<td>${ loginuser.memberName }</td>
    								<td>성별</td>
    								<td>${ member.gender }</td>
    							</tr>
    							<tr>
    								<td>전화번호</td>
    								<td>${ loginuser.phoneNo }</td>
    								<td>생년월일</td>
    								<td>${member.age}</td>
    							</tr>
    							<tr>
    								<td>주소</td>
    								<td colspan="3">${ loginuser.memberAddress }</td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr><td>자기소개를 작성해 주세요</td></tr>
    							<tr><td><textarea name="selfintroduction" style="width:580px" rows="15"> </textarea></td></tr>
    						</table>
    						
    						<table>
    							<tr>
    								<td colspan="4">학력사항을 작성해주세요</td>
    							</tr>
    							<tr>
    								<td>학교이름</td>
    								<td>전공</td>
    								<td>입학일자</td>
    								<td>졸업일자</td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName0"/></td>
    								<td><input type="text" name="major0"/></td>
    								<td><input type="date" name="edStartDate0"/></td>
    								<td><input type="date" name="edEndDate0"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName1"/></td>
    								<td><input type="text" name="major1"/></td>
    								<td><input type="date" name="edStartDate1"/></td>
    								<td><input type="date" name="edEndDate1"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName2"/></td>
    								<td><input type="text" name="major2"/></td>
    								<td><input type="date" name="edStartDate2"/></td>
    								<td><input type="date" name="edEndDate2"/></td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr>
    								<td colspan="4">경력사항을 입력해 주세요</td>
    							</tr>
    							<tr>
    								<td>회사이름</td>
    								<td>회사종류</td>
    								<td>입사일자</td>
    								<td>퇴사일자</td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName0"/></td>
    								<td><input type="text" name="companyType0"/></td>
    								<td><input type="date" name="caStartDate0"/></td>
    								<td><input type="date" name="caEndDate0"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName1"/></td>
    								<td><input type="text" name="companyType1"/></td>
    								<td><input type="date" name="caStartDate1"/></td>
    								<td><input type="date" name="caEndDate1"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName2"/></td>
    								<td><input type="text" name="companyType2"/></td>
    								<td><input type="date" name="caStartDate2"/></td>
    								<td><input type="date" name="caEndDate2"/></td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr>
    								<td>이력서의 공개여부를 선택해 주세요.</td>
    								<td>
    									<input type="radio" name="ispublic" value="공개" />공개
    									<input type="radio" name="ispublic" value="비공개" />비공개
    								</td>
    							</tr>
    							<tr>
    								<td colspan="2">
    									<input type="submit" value="등록" />
    									<input type="button" value="취소" onclick="location.href='individualmain.action?memberId=${ loginuser.memberId }';"/>
    								</td>
    							</tr>
    						</table>
    						</form>
    </div>
    </div>
    </div>
    </div>
    </section>
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
