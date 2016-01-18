<%@ page import="com.mvcdemoweb.model.dto.Member"%>
<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

		<div id="header">
            <div class="title">
                <a href="/spring-mvc-demoweb5/home.action">DEMO WEBSITE</a>
            </div>
            <div class="links">
            <c:choose>
            	<c:when test="${ empty sessionScope.loginuser }">
            	<a href="/spring-mvc-demoweb5/account/login.action">
            		<spring:message code="account.login" />
            	</a>
                <a href="#">
                	<spring:message code="account.join" />
                </a>
            	</c:when>
            	<c:otherwise>
            	<%-- ${ loginuser.memberId }<spring:message code="general.welcome" /> --%>
            	<spring:message code="general.welcome" arguments="${ loginuser.memberId }" />
            	<a href="/spring-mvc-demoweb5/account/logout.action">
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
                    <li><a href="/spring-mvc-demoweb5/member/list.action">
						<spring:message code="menu.member" />			
					</a></li>
					<li><a href="#">
						<spring:message code="menu.email" />
					</a></li>
					<li><a href="/spring-mvc-demoweb5/upload/list.action">
						<spring:message code="menu.library" /> 
					</a></li>
					<li><a href="#">
						<spring:message code="menu.board" />
					</a></li>
                </ul>
            </div>
        </div>
        <div style="text-align:right;margin-top:1px;
        	border:solid 1px;padding:5px">
        	[ TOTAL : ${ total } 명 ]
        	[ CURRENT : ${ current } 명 ]
        </div>
        
        
        
        
        
        
        
        
        
        
        
        