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
	<center>
		<section class="featured">
			<div class="container"> 
				<div class="row mar-bot40" style="padding-bottom: 20px;font-size:16px; color:forestgreen;">
    						개인회원께서는 이력서 사진과 학력, 경력사항, 간단한 자기소개와 함께 공개여부를 결정해 주시기 바랍니다.
    			</div>    						
    						<form action="resumeform.action" method="post" enctype="multipart/form-data">
    						<input type="hidden" name="memberId" value="${ loginuser.memberId }" />
    						
    											
    						<div class="input-group" style="he">
    						<table style="width:800px;margin-left:4px">
    							<tr style="text-align: center;">
    								<td colspan="2">
    								<td style="border: 1px;background-color:yellowgreen;width: 83px">이력서 제목</td>
    								<td>
    								<input type="text" name="resumetitle" style="width: 695px;margin-left:7px" class="form-control" placeholder="제목을 적어주세요." aria-describedby="basic-addon1" /></td>
    							</tr>
    						</table>
    						</div>
    						<div style="padding-top: 10px">
    							<table border="1px solid gray;" style="width:800px;text-align:center">
    							<tr>
    								<td width="30">이력서 사진</td>
    								<td>이름</td>
    								<td>${ loginuser.memberName }</td>
    								<td>생년월일</td>
    								<td>${member.age}</td>
    								
    							</tr>
    							<tr>    								
    								<td rowspan="3" height="25"><input type="file" name="resumephoto" /></td>
    								
    							</tr>
    							<tr>
    								<td>성별</td>
    								<td>${ member.gender }</td>
    								<td>전화번호</td>
    								<td>${ loginuser.phoneNo }</td>    								
    								
    							</tr>
    							<tr>
    								<td>주소</td>
    								<td colspan="3">${ loginuser.memberAddress }</td>
    							</tr>
    						</table>
    						</div>
    						
    						<div>    						
    						<table>
    							<tr>
    							<td style="padding: 17px 0 10px 0; font-size:15px; color: steelblue">자기소개 [성장배경/성격/취미.특기/장.단점 등]</td></tr>
    							<tr><td><textarea name="selfintroduction" style="width:800px" rows="15"> </textarea></td></tr>
    						</table>
    						</div>
    						
    						<div>    						
    						<table>
    							<tr style="font-size:15px">
    								<td colspan="4" style="color: saddlebrown;">학력사항을 작성해주세요</td>
    							</tr>
    							<tr>
    								<td style="width: 177px">학교이름</td>
    								<td style="width: 180px">전공</td>
    								<td style="width: 148px">입학일자</td>
    								<td>졸업일자</td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName0" style="width:174px;margin-bottom:3px"/></td>
    								<td><input type="text" name="major0" style="width:174px"/></td>
    								<td><input type="date" name="edStartDate0" style="height: 36px"/></td>
    								<td><input type="date" name="edEndDate0" style="height: 36px"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName1" style="width:174px;margin-bottom:3px"/></td>
    								<td><input type="text" name="major1" style="width:174px"/></td>
    								<td><input type="date" name="edStartDate1" style="height: 36px"/></td>
    								<td><input type="date" name="edEndDate1" style="height: 36px"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="schoolName2" style="width:174px;"/></td>
    								<td><input type="text" name="major2" style="width:174px"/></td>
    								<td><input type="date" name="edStartDate2" style="height: 36px"/></td>
    								<td><input type="date" name="edEndDate2" style="height: 36px"/></td>
    							</tr>
    						</table>
    						</div>
    						
    						<div style="margin-bottom:10px">
    						<table>
    							<tr style="font-size:15px;">
    								<td colspan="4" style="padding-top:10px;color:goldenrod">경력사항을 입력해 주세요</td>
    							</tr>
    							<tr>
    								<td style="width: 177px">회사이름</td>
    								<td style="width: 180px">회사종류</td>
    								<td style="width: 148px">입사일자</td>
    								<td>퇴사일자</td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName0" style="width:174px;margin-bottom:3px"/></td>
    								<td><input type="text" name="companyType0" style="width:174px"/></td>
    								<td><input type="date" name="caStartDate0" style="height: 36px"/></td>
    								<td><input type="date" name="caEndDate0" style="height: 36px"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName1" style="width:174px;margin-bottom:3px"/></td>
    								<td><input type="text" name="companyType1" style="width:174px"/></td>
    								<td><input type="date" name="caStartDate1" style="height: 36px"/></td>
    								<td><input type="date" name="caEndDate1" style="height: 36px"/></td>
    							</tr>
    							<tr>
    								<td><input type="text" name="companyName2" style="width:174px"/></td>
    								<td><input type="text" name="companyType2" style="width:174px"/></td>
    								<td><input type="date" name="caStartDate2" style="height: 36px"/></td>
    								<td><input type="date" name="caEndDate2" style="height: 36px"/></td>
    							</tr>
    						</table>
    						</div>
    						
    						<div style="margin-bottom:10px">
    						<table>
    							<tr>
    								<td style="font-size:15px;color: indigo">이력서의 공개여부를 선택해 주세요.</td>
    								<td style="padding-left: 8px">
    									<input type="radio" name="ispublic" value="공개" />공개
    									<input type="radio" name="ispublic" value="비공개" />비공개
    								</td>
    							</tr>
    							<tr>
    								<td colspan="2" style="padding-top: 20px;padding-left: 90px">
    									<input type="submit" value="등록" class="button btn btn-success btn-large"/>
    									<input type="button" value="취소" class="button btn btn-success btn-large" onclick="location.href='individualmain.action?memberId=${ loginuser.memberId }';"/>
    								</td>
    							</tr>
    						</table>
    						</div>
    		</form>
    </div>
    </section>
    </div>
    </div>
    </center>
 
    <c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
