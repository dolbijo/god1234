<%@ page import="com.dolbi.model.dto.Member"%>
<%@ page language="java" pageEncoding="utf-8"%>

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
            	<%-- ${ loginuser.memberId }<spring:message code="general.welcome" /> --%>
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
					<li><a href="/dolbi/individual/individualmain.action">
						<spring:message code="menu.individual" />			
					</a></li>
					<li><a href="/dolbi/jobboard/list.action">
						<spring:message code="menu.jobboard" />			
					</a></li>
					
					<li><a href="/dolbi/freeboard/list.action">
						<spring:message code="menu.freeboard" />			
					</a></li>
					
					<li><a href="/dolbi/company/servicemain.action">
						<spring:message code="menu.company" />			
					</a></li>
					
					
                </ul>
            </div>
        </div>
        <div style="text-align:right;margin-top:1px;
        	border:solid 1px;padding:5px">
        	[ TOTAL : ${ total } 명 ]
        	[ CURRENT : ${ current } 명 ]
        </div>
        
        
        
        
        
        
        
        
        
        
        
        