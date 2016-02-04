<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<% String cp = request.getContextPath(); %>

<header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <strong>Email: </strong>admin@albamong.com
                    &nbsp;&nbsp;
                    <strong>Support: </strong>010-5560-6417
                </div>

            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/dolbi/home.action">
					<spring:message code="menu.logo" />
					
                </a>
            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <ul class="nav">

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                            </a>
                            <div class="dropdown-menu dropdown-settings">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img src="assets/img/64-64.jpg" alt="" class="img-rounded" />
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Jhon Deo Alex </h4>
                                        <h5>Developer & Designer</h5>

                                    </div>
                                </div>
                                <hr />
                                <h5><strong>Personal Bio : </strong></h5>
                                Anim pariatur cliche reprehen derit.
                                <hr />
                                <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="login.html" class="btn btn-danger btn-sm">Logout</a>

                            </div>
                        </li>


                    </ul>
                </div>
            </div>
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
                            <li><a class="menu-top-active" href="/dolbi/jobboard/list.action"><spring:message code="menu.jobboard" /></a></li>
                            <!-- 자유게시판 -->
                            <li><a href="/dolbi/freeboard/list.action"><spring:message code="menu.freeboard" /></a></li>
                            
                            <!-- 회원서비스 -->
                            <c:choose>
               				<c:when test="${loginuser.memberType eq 'individual' }">
               					<li><a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }"><spring:message code="menu.individual" /> </a></li>
               				</c:when>
               				<c:when test="${loginuser.memberType eq 'company' }">
               					<li><a href="/dolbi/company/servicemain.action"><spring:message code="menu.company" /> </a> </li>
                  			</c:when>
                  			<c:when test="${loginuser.memberType eq 'admin' }">
                  				<li><a href="/dolbi/member/listusertype.action"><spring:message code="menu.member" /></a> </li>
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
     							<li><span><spring:message code="general.welcome" arguments="${ loginuser.memberId }" /></span></li>
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
      