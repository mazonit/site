<jsp:directive.include file="/WEB-INF/views/includes.jsp" />

<!DOCTYPE html>
<html>

	<head>
		<title><tiles:getAsString name="title"/></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="keywords" content="" />
        <meta name="author" content="Mazon IT" />
        <meta name="robots" content="Consulting"/>
        <meta name="description" content="Mazon IT Solution" />
		<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.png" />">
		
		
		 <!-- =========================================
        Mobile Configurations
        ========================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <meta name="GOOGLEBOT" content="index follow"/>
        <meta name="apple-mobile-web-app-capable" content="yes" />
		
		
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-responsive.min.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome.min.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/animate.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/flexslider.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.fancybox.css"/>"/>
		
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>"/>
		
		
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		


		<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	    <![endif]-->
	    
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.0.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/holder.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/modernizr.custom.js"/>"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/gmaps.js"/>"></script>
		
	    <script>
			$(document).ready(function() {
				$('#home-section').backstretch([
                     '<c:url value="/resources/img/slider/1-1920x1080.jpg" />',
                     '<c:url value="/resources/img/slider/2-1920x1080.jpg" />'
                 ], {
                     fade: 750,
                     duration: 25000
                 });
			});
			
			</script>
	    	
	</head>

	<body>
		<div class="backstretch-overlayer"></div>
	
		
		<!-- =========================================
        Menu
        ========================================== -->
        <!-- gn-menu-main -->
        <ul id="gn-menu" class="gn-menu-main">
        

        	<%--
            <!-- gn-trigger -->
            <li class="gn-trigger">

                <!-- gn-icon-menu -->
                <a class="gn-icon-menu" href="javascript:void(0)" title="Menu"><i class="fa fa-bars"></i></a>

                <!-- gn-menu-wrapper -->
                <nav class="gn-menu-wrapper">

                    <!-- gn-scroller -->
                    <div class="gn-scroller">

                        <!-- gn-menu -->
                        <ul class="gn-menu">

                            <!-- gn-search-item -->
                            <li class="gn-search-item">
                                <i class="fa fa-search"></i>
                                <form class="searchform" method="get" action="#">
                                    <input class="gn-search" type="search" name="s" placeholder="Search">
                                </form>
                            </li><!-- /gn-search-item -->

                            <!-- Home -->
                            <li>
                                <a class="gn-active" href="index.html" title="Home"><i class="fa fa-home"></i> Home</a>
                            </li><!-- /Home -->

                            <!-- About Us -->
                            <li>
                                <a class="gn-dropdown" href="javascript:void(0)" title="About Us"><i class="fa fa-user"></i> About Us</a>

                                <!-- gn-submenu -->
                                <ul class="gn-submenu">
                                    <li><a href="about-us.html" title="Sobre Nossa Equie">Sobre Nós</a></li>
                                    <li><a href="about-me.html" title="About Me">About Me</a></li>
                                </ul><!-- /gn-submenu -->

                            </li><!-- /About Us -->

                            <!-- Pages -->
                            <li>
                                <a class="gn-dropdown" href="javascript:void(0)" title="Pages"><i class="fa fa-file-o"></i> Pages</a>

                                <!-- gn-submenu -->
                                <ul class="gn-submenu">
                                    <li><a href="page-our-services.html" title="Our Services">Our Services</a></li>
                                    <li><a href="page-pricing-tables.html" title="Pricing Tables">Pricing Tables</a></li>
                                    <li><a href="page-team.html" title="Team">Team</a></li>
                                    <li><a href="page-404-error.html" title="404 Error">404 Error</a></li>
                                    <li><a href="page-sitemap.html" title="Sitemap">Sitemap</a></li>
                                </ul><!-- /gn-submenu -->

                            </li><!-- /Pages -->

                            <!-- Portfolio -->
                            <li>
                                <a class="gn-dropdown" href="javascript:void(0)" title="Portfolio"><i class="fa fa-briefcase"></i> Portfolio</a>
                                <!-- gn-submenu -->
                                <ul class="gn-submenu">
                                    <li><a href="portfolio-4-columns.html" title="Portfolio 4 Columns">4 Columns</a></li>
                                    <li><a href="portfolio-3-columns.html" title="Portfolio 3 Columns">3 Columns</a></li>
                                    <li><a href="portfolio-2-columns.html" title="Portfolio 2 Columns">2 Columns</a></li>
                                    <li><a href="portfolio-single-project.html" title="Portfolio Single Project">Single Project</a></li>
                                </ul><!-- /gn-submenu -->

                            </li><!-- /Portfolio -->

                            <!-- Blog -->
                            <li>
                                <a class="gn-dropdown" href="javascript:void(0)" title="Blog"><i class="fa fa-pencil"></i> Blog</a>

                                <!-- gn-submenu -->
                                <ul class="gn-submenu">
                                    <li><a href="blog.html" title="Blog">Blog</a></li>
                                    <li><a href="blog-timeline.html" title="Blog Timeline">Blog Timeline</a></li>
                                    <li><a href="blog-single-post.html" title="Single Post">Single Post</a></li>
                                </ul><!-- /gn-submenu -->

                            </li><!-- /Blog -->

                            <!-- Contact Us -->
                            <li>
                                <a href="contact-us.html" title="Contact Us"><i class="fa fa-phone"></i> Entre em Contato</a>
                            </li><!-- /Contact Us -->

                        </ul><!-- /gn-menu -->

                    </div><!-- /gn-scroller -->

				</nav><!-- /gn-menu-wrapper -->

            </li>
             --%>

	            <li class="logo">
	                <a href="<c:url value="/" />" title="Retornar a Página Principal"><i class="fa fa-home"></i></a>
	            </li>
            <li class="logo">
                <a href="<c:url value="/" />" title="Mazon IT Solution"><img src="<c:url value="/resources/img/logo.png" />" alt="logo" /></a>
            </li>
            
            <c:if test="${not empty pageTitle}">
	            <li class="page-title">
	                <h3>${pageTitle}</h3>
	            </li>
             </c:if>
            <!-- /page-title -->

            <li id="menu-social-icons">
                <ul class="menu-social-icons">
                    <li><a href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="javascript:void(0)">&nbsp;</a></li>
                    <li><a href="<c:url value="/contato" />" title="Entrar em Contato"><i class="fa fa-envelope"></i></a></li>
            <%--
                    <li><a href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="javascript:void(0)" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="javascript:void(0)" title="Youtube"><i class="fa fa-youtube-play"></i></a></li>
                    <li><a href="javascript:void(0)" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                    <li><a href="javascript:void(0)" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
             --%>
                </ul>
            </li>

        </ul><!-- /gn-menu-main -->
        
        
		
		<tiles:insertAttribute name="content" />
		
		
		<!-- =========================================
        Footer
        ========================================== -->
        <div class="footer">

            <div class="copyright">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">

                        <div class="col-md-9">
                            <p>Copyright &copy; 2015 - Todos os direitos reservados</p>
                        </div>

                        <div class="col-md-3">
                            <!-- social-icons -->
                            <ul class="social-icons">
                                <li><a href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="javascript:void(0)" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="javascript:void(0)" title="Youtube"><i class="fa fa-youtube-play"></i></a></li>
                                <li><a href="javascript:void(0)" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="javascript:void(0)" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                            </ul><!-- /social-icons -->
                        </div>

                    </div><!-- /row -->
                </div><!-- /container -->
            </div><!-- /copy-right -->


        </div>
		
		
		
		
	
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.easing.1.3.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.backstretch.min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/classie.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/gnmenu.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.flexslider-min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/waypoints.min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/fancybox/jquery.mousewheel-3.0.6.pack.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/fancybox/jquery.fancybox.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/tweetie.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jflickrfeed.min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.countTo.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.accordion.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.isotope.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.cbpQTRotator.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.fitvids.js"/> "></script>
		
		
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/snap.svg-min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery.nicescroll.min.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/plugins/retina-1.1.0.js"/> "></script>
		<script type="text/javascript" src="<c:url value="/resources/js/custom.js"/> "></script>
		
		
		 <!--[if lt IE 9]>
		    <script src="<c:url value="/resources/js/plugins/html5shiv.js"/> "></script>
		    <script src="<c:url value="/resources/js/plugins/selectivizr.js"/> "></script>
		<![endif]-->
	
	
	
		
	</body>
</html>
