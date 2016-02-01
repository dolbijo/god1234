<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    
    <head>
		<!-- BASICS -->
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Albamong</title>
        <meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="/dolbi/sources/css/isotope.css" media="screen" />	
		<link rel="stylesheet" href="/dolbi/resources/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="/dolbi/resources/css/bootstrap.css">
		<link rel="stylesheet" href="/dolbi/resources/css/bootstrap-theme.css">
        <link rel="stylesheet" href="/dolbi/resources/css/style.css">
		<!-- skin -->
		<link rel="stylesheet" href="/dolbi/sources/skin/default.css">
    </head>
	 
    <body>
		<section id="header" class="appear"></section>
		
			<c:import url="/WEB-INF/views/include/header.jsp" />

		<section class="featured">
			<div class="container"> 
				<div class="row mar-bot40">
					<div class="col-md-6 col-md-offset-3">
						<div class="align-center">
    						입력 받아야 할것 : 이력서 사진 / 경력사항 / 학력
    						자기소개 / 공개여부 
    						
    						<form action="resumeform.action" method="post" enctype="multipart/form-data">
    						<table border="1">
    							<tr>
    								<td colspan="2">이력서 사진</td>
    								<td colspan="2"><input type="file" name="resumephoto" /></td>
    							</tr>
    							<tr>
    								<td>이름</td>
    								<td><input type="text" /></td>
    								<td>성별</td>
    								<td><input type="text" /></td>
    							</tr>
    							<tr>
    								<td>전화번호</td>
    								<td><input type="text" /></td>
    								<td>생년월일</td>
    								<td><input type="text" /></td>
    							</tr>
    							<tr>
    								<td>주소</td>
    								<td colspan="3"><input type="text" /></td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr><td>자기소개를 작성해 주세요</td></tr>
    							<tr><td><textarea> </textarea></td></tr>
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
    								<td><input type="text" /></td>
    								<td><input type="text" /></td>
    								<td><input type="date" /></td>
    								<td><input type="date" /></td>
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
    								<td><input type="text" /></td>
    								<td><input type="text" /></td>
    								<td><input type="date" /></td>
    								<td><input type="date" /></td>
    							</tr>
    						</table>
    						
    						<table>
    							<tr>
    								<td>이력서의 공개여부를 선택해 주세요.</td>
    							</tr>
    							<tr>
    								<td>
    									<input type="submit" />
    									<input type="reset" />
    								</td>
    							</tr>
    						</table>
    						</form>
    </div>
    </div>
    </div>
    </div>
    </section>
</body>
</html>
