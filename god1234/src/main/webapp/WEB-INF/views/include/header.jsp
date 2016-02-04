<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="navbar navbar-fixed-top">
  			<div class="navbar-inner">
	    		<div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
	                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> 
	                    </a><a class="brand" href="/dolbi/home.action"><spring:message code="menu.logo" /> </a>
		      		<div class="nav-collapse">
			        	<form class="navbar-search pull-right">
			          		<input type="text" class="search-query" placeholder="Search">
			        	</form>
		      		</div>
	    		</div>
  			</div>
		</div>
		
<!-- /navbar -->
	<div class="subnavbar">
  		<div class="subnavbar-inner">
    		<div class="container">
      			<ul class="mainnav">
      			
        			<li class="active"><a href="/dolbi/jobboard/list.action"><i class="icon-shopping-cart"></i><span><spring:message code="menu.jobboard" /></span> </a> </li>
        			<li><a href="/dolbi/freeboard/list.action"><i class="icon-comments-alt"></i><span><spring:message code="menu.freeboard" /></span> </a> </li>
        			
        			<c:choose>
               		<c:when test="${loginuser.memberType eq 'individual' }">
               			<li><a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }"><i class="icon-user"></i><span><spring:message code="menu.individual" /></span> </a></li>
               		</c:when>
               		<c:when test="${loginuser.memberType eq 'company' }">
               			<li><a href="/dolbi/company/servicemain.action"><i class="icon-group"></i><span><spring:message code="menu.company" /></span> </a> </li>
                  	</c:when>
                  	<c:when test="${loginuser.memberType eq 'admin' }">
                  		<li><a href="/dolbi/member/listusertype.action"><i class="icon-cogs"></i><span><spring:message code="menu.member" /></span> </a> </li>
                  	</c:when>
               		<c:otherwise>
	               		<li><a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }"><i class="icon-user"></i><span><spring:message code="menu.individual" /></span> </a></li>
	        			<li><a href="/dolbi/company/servicemain.action"><i class="icon-group"></i><span><spring:message code="menu.company" /></span> </a> </li>
	               	</c:otherwise>
               		</c:choose>
               		
               		<c:choose>
                  	<c:when test="${ empty sessionScope.loginuser }">
	        			<li><a href="/dolbi/account/login.action"><i class="icon-star"></i><span><spring:message code="menu.login" /></span> </a> </li>
	        			<li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-long-arrow-down"></i><span><spring:message code="menu.join" /></span> </a>
							<ul class="dropdown-menu">
					            <li><a href="/dolbi/member/register.action?usertype=individual"><spring:message code="menu.indijoin" /></a></li>
					            <li><a href="/dolbi/member/register.action?usertype=company"><spring:message code="menu.comjoin" /></a></li>
					        </ul>	        			
	        			 </li>
     				</c:when>
     				<c:otherwise>
     					<li><span><spring:message code="general.welcome" arguments="${ loginuser.memberId }" /></span></li>
     					<li><a href="/dolbi/account/logout.action"><i class="icon-star-empty"></i><span><spring:message code="menu.logout" /></span> </a> </li>
     				</c:otherwise>
     				</c:choose>
     			</ul>
    		</div>
  		</div>
	</div>
      
      
      
      
      