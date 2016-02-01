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
							<img src = "/dolbi/resources/img/mong_main.png">
							<h2 class="slogan">Welcome to Albamong!</h2>	
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- services -->
		<section id="section-jobboard" class="section pad-bot30 bg-white">
		<div class="container"> 
		
			<div class="row mar-bot40">
				<div class="col-lg-4" >
					<div class="align-center">
						<i class="fa fa-code fa-5x mar-bot20"></i>
						<h4 class="text-bold">Valid HTML5</h4>
						<p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. 
						Mei cu dicat voluptaria volumus.
						</p>
					</div>
				</div>
					
				<div class="col-lg-4" >
					<div class="align-center">
						<i class="fa fa-terminal fa-5x mar-bot20"></i>
						<h4 class="text-bold">Responsive</h4>
						<p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. 
						Mei cu dicat voluptaria volumus.
						</p>
					</div>
				</div>
			
				<div class="col-lg-4" >
					<div class="align-center">
						<i class="fa fa-bolt fa-5x mar-bot20"></i>
						<h4 class="text-bold">Customizable</h4>
						<p>Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no. 
						Mei cu dicat voluptaria volumus.
						</p>
					</div>
				</div> 
			
			</div>	

		</div>
		</section>
			
		<!-- spacer section:testimonial -->
		<section id="section-freeboard" class="section" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">				
					<div class="col-lg-12">
							<div class="align-center">
										<div class="testimonial pad-top40 pad-bot40 clearfix">
											<h5>
												Nunc velit risus, dapibus non interdum quis, suscipit nec dolor. Vivamus tempor tempus mauris vitae fermentum. In vitae nulla lacus. Sed sagittis tortor vel arcu sollicitudin nec tincidunt metus suscipit.Nunc velit risus, dapibus non interdum.
											</h5>
											<br/>
											<span class="author">&mdash; MIKE DOE <a href="#">www.siteurl.com</a></span>
										</div>

								</div>
							</div>
					</div>
				
			</div>	
		</div>	
		</section>
			
		<!-- about -->
		<section id="section-individual" class="section appear clearfix">
		<div class="container">

				<a href="/dolbi/individual/individualmain.action?memberId=${ loginuser.memberId }">more</a>
				<div class="row mar-bot40">
					<div class="col-md-offset-3 col-md-6">
						<div class="section-header">
							<h2 class="section-heading animated" data-animation="bounceInUp">Our Team</h2>
							<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam.</p>
						</div>
					</div>
				</div>

					<div class="row align-center mar-bot40">
						<div class="col-md-3">
							<div class="team-member">
								<figure class="member-photo"><img src="/dolbi/resources/img/team/member1.jpg" alt="" /></figure>
								<div class="team-detail">
									<h4>Jason Doe</h4>
									<span>User experiences</span>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="team-member">
								<figure class="member-photo"><img src="/dolbi/resources/img/team/member2.jpg" alt="" /></figure>
								<div class="team-detail">
									<h4>Timothy Clark</h4>
									<span>Web developer</span>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="team-member">
								<figure class="member-photo"><img src="/dolbi/resources/img/team/member3.jpg" alt="" /></figure>
								<div class="team-detail">
								<h4>Vicky Tan</h4>
									<span>Web designer</span>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="team-member">
								<figure class="member-photo"><img src="/dolbi/resources/img/team/member4.jpg" alt="" /></figure>
								<div class="team-detail">
								<h4>Kevin Peterson</h4>
									<span>UI designer</span>
								</div>
							</div>
						</div>
					</div>
						
		</div>
		</section>
		<!-- /about -->
		
		<!-- spacer section:stats -->
		<section id="company" class="section pad-top40 pad-bot40" data-stellar-background-ratio="0.5">
			<div class="container">
            <div class="align-center pad-top40 pad-bot40">
                <blockquote class="bigquote color-white">Indoctum accusamus comprehensam</blockquote>
				<p class="color-white">Bootstraptaste</p>
            </div>
			</div>	
		</section>
		
		<!-- section works -->
		<section id="section-login" class="section appear clearfix">
			<div class="container">
				
				<div class="row mar-bot40">
					<div class="col-md-offset-3 col-md-6">
						<div class="section-header">
							<h2 class="section-heading animated" data-animation="bounceInUp">Portfolio</h2>
							<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam.</p>
						</div>
					</div>
				</div>
					
                        <div class="row">
                          <nav id="filter" class="col-md-12 text-center">
                            <ul>
                              <li><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
                              <li><a href="#"  class="btn-theme btn-small" data-filter=".webdesign" >Web Design</a></li>
                              <li><a href="#"  class="btn-theme btn-small" data-filter=".photography">Photography</a></li>
                              <li ><a href="#" class="btn-theme btn-small" data-filter=".print">Print</a></li>
                            </ul>
                          </nav>
                          <div class="col-md-12">
                            <div class="row">
                              <div class="portfolio-items isotopeWrapper clearfix" id="3">
							  
                                <article class="col-md-4 isotopeItem webdesign">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img1.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img1.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img2.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img2.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>
								

                                <article class="col-md-4 isotopeItem photography">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img3.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img3.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img4.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img4.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img5.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img5.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem webdesign">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img6.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img6.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img7.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img7.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img8.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img8.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
									<div class="portfolio-item">
										<img src="/dolbi/resources/img/portfolio/img9.jpg" alt="" />
										 <div class="portfolio-desc align-center">
											<div class="folio-info">
												<h5><a href="#">Portfolio name</a></h5>
												<a href="/dolbi/resources/img/portfolio/img9.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
											 </div>										   
										 </div>
									</div>
                                </article>
                                </div>
                                        
							</div>
                                     

							</div>
                        </div>
				
			</div>
		</section>
		<section id="parallax2" class="section parallax" data-stellar-background-ratio="0.5">	
            <div class="align-center pad-top40 pad-bot40">
                <blockquote class="bigquote color-white">Indoctum accusamus comprehensam</blockquote>
				<p class="color-white">Bootstraptaste</p>
            </div>
		</section>


	<section id="footer" class="section footer">
		<div class="container">
			<div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
				<div class="col-sm-12 align-center">
                    <ul class="social-network social-circle">
                        <li><a href="http://www.facebook.com" target="_blank" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="http://www.twitter.com" target="_blank" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="http://www.google.co.kr" target="_blank" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                    </ul>				
				</div>
			</div>

			<div class="row align-center copyright">
					<div class="col-sm-12"><p>Copyright &copy; 2014 Albamong & Dolbi <a href="http://bootstraptaste.com">Bootstrap Themes</a></p></div>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Amoeba
                    -->
			</div>
		</div>

	</section>
	<a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>	

	<script src="/dolbi/resources/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<script src="/dolbi/resources/js/jquery.js"></script>
	<script src="/dolbi/resources/js/jquery.easing.1.3.js"></script>
    <script src="/dolbi/resources/js/bootstrap.min.js"></script>
	<script src="/dolbi/resources/js/jquery.isotope.min.js"></script>
	<script src="/dolbi/resources/js/jquery.nicescroll.min.js"></script>
	<script src="/dolbi/resources/js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="/dolbi/resources/js/skrollr.min.js"></script>		
	<script src="/dolbi/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="/dolbi/resources/js/jquery.localscroll-1.2.7-min.js"></script>
	<script src="/dolbi/resources/js/stellar.js"></script>
	<script src="/dolbi/resources/js/jquery.appear.js"></script>
	<script src="/dolbi/resources/js/validate.js"></script>
    <script src="/dolbi/resources/js/main.js"></script>
        
	</body>
</html>