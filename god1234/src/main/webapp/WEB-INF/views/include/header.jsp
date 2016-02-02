<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

   <div class="navbar navbar-fixed-top" role="navigation" data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:60px; background-color:rgba(0,0,0,1);">
      <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
               <span class="fa fa-bars color-white"></span>
            </button>
            <h1><a class="navbar-brand" href="/dolbi/home.action" data-0="line-height:90px;" data-300="line-height:50px;">Albamong
            </a></h1>
         </div>
         <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
            
               <li><a href="/dolbi/jobboard/list.action">
                  <spring:message code="menu.jobboard" />         
               </a></li>
               <!-- <li><a href="#section-works">채용게시판</a></li> -->
               
               <li><a href="/dolbi/freeboard/list.action">
                  <spring:message code="menu.freeboard" />         
               </a></li>
               <!-- <li><a href="#section-works">알바TALK</a></li> -->
               
               <c:choose>
                  <c:when test="${ empty sessionScope.loginuser }">
                  <li><a href="/dolbi/#section-individual">
                  <spring:message code="menu.individual" />         
               </a></li>
               
               <li><a href="/dolbi/company/servicemain.action">
                  <spring:message code="menu.company" />        

               </a></li>
               </c:when>
               <c:when test="${loginuser.memberType eq 'individual' }">
               <li><a href="/dolbi/#section-individual">
                  <spring:message code="menu.individual" />         
               </a></li>
               </c:when>
               <c:otherwise>
               <li><a href="/dolbi/company/servicemain.action">
                  <spring:message code="menu.company" />         

               </a></li>
               </c:otherwise>
                  </c:choose>
               <!-- <li><a href="#section-services">개인서비스</a></li>
               <li><a href="#section-about">기업서비스</a></li> -->
               
               <c:choose>
                  <c:when test="${ empty sessionScope.loginuser }">
                     <li><a href="/dolbi/account/login.action">
                        <spring:message code="menu.login" />
                     </a></li>
                      <li><a href="/dolbi/member/usertype.action">
                         <spring:message code="menu.join" />
                      </a></li>
                  </c:when>
                  <c:otherwise>
               
                     <li><spring:message code="general.welcome" arguments="${ loginuser.memberId }" /></li>
                     <li><a href="/dolbi/account/logout.action">
                        <spring:message code="menu.logout" />
                     </a></li>
                  </c:otherwise>
                  </c:choose>
               <!-- <li><a href="/dolbi/account/login.action">LogIn</a></li>
               <li><a href="/dolbi/account/usertype.action">Sign Up</a></li> -->
            
            </ul>
         </div><!--/.navbar-collapse -->
      </div>
   </div>
      
      
      
      
      
      
      