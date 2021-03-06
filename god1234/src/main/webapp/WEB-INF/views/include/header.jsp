<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<% String cp = request.getContextPath(); %>


    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container" align="center">
             
                <a class="navbar-brand" href="/dolbi/home.action" style="padding-top: 30px;height: 195px;">
                           <img src = "/dolbi/resources/bootstrap/img/logo2.png" >
                </a>

        </div>
    </div>

    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <!-- 채용게시판 -->
                            <li><a href="/dolbi/jobboard/list.action?pageNum=1"><spring:message code="menu.jobboard" /></a></li>
                            <!-- 알바톡 -->
                            
                            <li class="dropdown">
                                   <a id="dLable" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                      <spring:message code="menu.freeboard" />
                                  	</a>
                                  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                  <li><a href="/dolbi/freeboard/list.action?freeboardtype=albainfo"><spring:message code="menu.albainfo" /></a></li>
                               	  <li><a href="/dolbi/freeboard/list.action?freeboardtype=albawarning"><spring:message code="menu.albawarning" /></a></li>
                                  <li><a href="/dolbi/freeboard/list.action?freeboardtype=albaexp"><spring:message code="menu.albaexp" /></a></li>
                                  </ul>
                            </li>  
                            
                            
                            <!-- 회원서비스 -->
                            <c:choose>
                            <c:when test="${loginuser.memberType eq 'individual' }">
                              <li class="dropdown">
                        
                                   <a id="dLable" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                      <spring:message code="menu.individual" />
                                  </a>
                                  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                  <li><a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }"><spring:message code="menu.individualmain" /></a></li>
                               <li><a href="/dolbi/individual/resumeservice.action?memberId=${ loginuser.memberId }"><spring:message code="menu.resume" /></a></li>
                               <li><a href="/dolbi/individual/applicationlist.action?memberId=${ loginuser.memberId }"><spring:message code="menu.application" /></a></li>
                                     <li><a href="/dolbi/individual/recommendationlist.action?memberId=${ loginuser.memberId }"><spring:message code="menu.recommendation" /></a></li>
                                  </ul>
                              </li>   
                           </c:when>
                           <c:when test="${loginuser.memberType eq 'company' }">
                              
                              <li class="dropdown">
                                   <a id="dLable" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                      <spring:message code="menu.company" />
                                  	</a>
                                  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
	                                  <li><a href="/dolbi/company/servicemain.action"><spring:message code="menu.companymain" /> </a> </li>
	                                  <li><a href="/dolbi/company/ingjobboard.action?memberId=${ loginuser.memberId }"><spring:message code="menu.ingjobboard" /></a></li>
	                               	  <li><a href="/dolbi/company/endjobboard.action?memberId=${ loginuser.memberId }"><spring:message code="menu.endjobboard" /></a></li>
	                                  <li><a href="/dolbi/company/resumelist.action"><spring:message code="menu.resumelist" /></a></li>
                                  </ul>
                            </li>  
                           </c:when>
                           <c:when test="${loginuser.memberType eq 'admin' }">
                              <li class="dropdown">
                                  <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"> -->
                                   <a id="dLable" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                      <spring:message code="menu.member" />
                                  </a>
                                  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                  <li><a href="/dolbi/member/listindi.action"><spring:message code="menu.maindi" /></a></li>
                               	  <li><a href="/dolbi/member/listcom.action"><spring:message code="menu.macom" /></a></li>
                                  <li><a href="/dolbi/member/stats.action"><spring:message code="menu.stats" /></a></li>
                                  </ul>
                              </li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }"><spring:message code="menu.individual" /></a></li>
                          <li><a href="/dolbi/company/servicemain.action"><spring:message code="menu.company" /></a> </li>
                           </c:otherwise>
                           </c:choose>
                            
                            <c:choose>
                           <c:when test="${ empty sessionScope.loginuser }">
                          <li><a href="/dolbi/account/login.action"><spring:message code="menu.login" /></a> </li>
                          
                        <li class="dropdown">
                                  <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"> -->
                                   <a id="dLable" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                      <spring:message code="menu.join" />
                                  </a>
                                  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                  <li><a href="/dolbi/member/register.action?usertype=individual"><spring:message code="menu.indijoin" /></a></li>
                               <li><a href="/dolbi/member/register.action?usertype=company"><spring:message code="menu.comjoin" /></a></li>
                                  </ul>
                              </li>
                           
                       </c:when>
                       <c:otherwise>
                          
                          <li><a href="/dolbi/account/logout.action"><span><spring:message code="menu.logout" /></a> </li>
                       </c:otherwise>
                       </c:choose>
 
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->
      