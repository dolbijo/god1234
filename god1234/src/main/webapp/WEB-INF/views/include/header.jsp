<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<!-- BASICS -->
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Amoeba free one page responsive bootstrap site template</title>
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
		<div class="navbar navbar-fixed-top" role="navigation" data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:60px; background-color:rgba(0,0,0,1);">
			 <div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="fa fa-bars color-white"></span>
					</button>
					<h1><a class="navbar-brand" href="index.html" data-0="line-height:90px;" data-300="line-height:50px;">			Albamong
					</a></h1>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
					<!-- <li class="active"><a href="#">Home</a></li>  -->
					<li><a href="#section-services">개인서비스</a></li>
						<li><a href="#section-about">기업서비스</a></li>
						<li><a href="#section-works">알바TALK</a></li>
						<li><a href="#section-works">채용게시판</a></li>
						<li><a href="/dolbi/account/login.action">LogIn</a></li>
						<li><a href="/dolbi/account/usertype.action">Sign Up</a></li>
					</ul>
				</div><!--/.navbar-collapse -->
			</div>
		</div>

<<<<<<< HEAD
		<section class="featured">
			<div class="container"> 
				<div class="row mar-bot40">
					<div class="col-md-6 col-md-offset-3">
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

		<div id="header">
            <div class="title">

               

                <a href="/dolbi/home.action"><img src="/dolbi/resources/image/p3logo3.png" widht="100px" height="50px"></a>

            </div>
            <div class="links">
            <c:choose>
            	<c:when test="${ empty sessionScope.loginuser }">
            	<a href="/dolbi/account/login.action">
            		<spring:message code="account.login" />
            	</a>
                <a href="/dolbi/member/usertype.action">
                	<spring:message code="account.join" />
                </a>
            	</c:when>
            	<c:otherwise>
            	
            	<spring:message code="general.welcome" arguments="${ loginuser.memberId }" />
            	<a href="/dolbi/account/logout.action">
            		<spring:message code="account.logout" />
            	</a>
            	</c:otherwise>
            </c:choose>
            </div>
        </div>        
        <div id="menu">
            <div>
                <ul>
                	<!-- a : 페이지 이동을 처리하는 마크업 -->
                   
					<li><a href="/dolbi/upload/list.action">
						<spring:message code="menu.library" /> 
					</a></li>
					<li><a href="/dolbi/jobboard/list.action">
						<spring:message code="menu.jobboard" />			

					</a></li>
					
					<li><a href="/dolbi/freeboard/list.action">
						<spring:message code="menu.freeboard" />			
					</a></li>
					
					
					
					<c:choose>
            		<c:when test="${ empty sessionScope.loginuser }">
            		<li><a href="/dolbi/individual/individualmain.action">
						<spring:message code="menu.individual" />			
					</a></li>
					
					<li><a href="/dolbi/company/servicemain.action">
						<spring:message code="menu.company" />			

					</a></li>
					</c:when>
					<c:when test="${loginuser.memberType eq 'individual' }">
					<li><a href="/dolbi/individual/individualmain.action">
						<spring:message code="menu.individual" />			
					</a></li>
					</c:when>
					<c:otherwise>
					<li><a href="/dolbi/company/servicemain.action">
						<spring:message code="menu.company" />			

					</a></li>
					</c:otherwise>
            		</c:choose>
>>>>>>> branch 'master' of https://github.com/dolbijo/god1234.git
						
						<div class="align-center">
					<!-- 	<i class="fa fa-flask fa-5x mar-bot20"></i>  -->
					<img src = "/dolbi/resources/img/mong_main.png">
							<h2 class="slogan">Welcome to Albamong!</h2>
							<p>
							
							</p>	
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
		
		
		
		
		
		
		
		
		
		
		
		