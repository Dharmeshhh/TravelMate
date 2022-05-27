<%@ Page Language="VB" AutoEventWireup="false" CodeFile="custhome.aspx.vb" Inherits="custhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travel-mate</title>
    <link href="css/client.css" rel="stylesheet" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<!-- web-font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
		<!-- web-font -->
		<!-- js -->
		<script src="js/jquery.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- js -->
		<script src="js/modernizr.custom.js"></script>
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
		    jQuery(document).ready(function ($) {
		        $(".scroll").click(function (event) {
		            event.preventDefault();
		            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
		        });
		    });
		</script>
		<!-- start-smoth-scrolling -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- header -->
		<div class="header">
			<div class="head-bg">
				<!-- container -->
				<div class="container">
					<div class="head-logo">
						<a href="custhome.aspx"><img src="images/logo1.png" alt="" /></a>
                        <img src="images/ap.gif" alt="" align=top/>
					</div>
					<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=""></span>
							<ul class="cl-effect-1">
								                                            
								<li><a href="custpackages.aspx">PACKAGES</a></li>
								<li><a href="custbooking.aspx">BOOKING</a></li> 
								<li><a href="custgallery.aspx">GALLERY</a></li> 
                                <li><a href="custfeedback.aspx">FEEDBACK</a></li> 
                                <li><a href="custabout.aspx">ABOUT</a></li> 
								<li><a href="custlogin.aspx">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-default"/></a></li>
                                <li><asp:Label ID="lblSuccess" runat="server" cssclass="text-success"></asp:Label></li>
							</ul>
							<!-- script-for-menu -->
							 <script>
							     $("span.menu").click(function () {
							         $("ul.cl-effect-1").slideToggle(300, function () {
							             // Animation complete.
							         });
							     });
							</script>
						<!-- /script-for-menu -->
					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- //container -->
			</div>
			<!-- container -->
			<div class="container">
				<!-- banner Slider starts Here -->
					<script src="js/responsiveslides.min.js"></script>
					 <script>
					     // You can also use "$(window).load(function() {"
					     $(function () {
					         // Slideshow 4
					         $("#slider3").responsiveSlides({
					             auto: true,
					             pager: false,
					             nav: false,
					             speed: 500,
					             namespace: "callbacks",
					             before: function () {
					                 $('.events').append("<li>before event fired.</li>");
					             },
					             after: function () {
					                 $('.events').append("<li>after event fired.</li>");
					             }
					         });

					     });
					  </script>
					<!--//End-slider-script -->
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="head-info">
									<h1>Great Deals on<span>Luxury Holidays !</span></h1>
									<p>UP TO 30% OFF  *T&C Apply</p>
                                    <asp:Button ID="Button2" runat="server" Text="Explore More" 
                                        CssClass="btn btn-danger" PostBackUrl="~/custpackages.aspx"  />

								</div>
							</li>
							<li>
								<div class="head-info">
									<h1>Explore South India<span>Bangalore Getaways</span></h1>
									<p>Starts from INR 20000</p>
                                     <asp:Button ID="Button3" runat="server" Text="Explore More" 
                                        CssClass="btn btn-danger" PostBackUrl="~/custpackages.aspx"  />
								</div>
							</li>
							<li>
								<div class="head-info">
									<h1>Summer Special<span>Best Selling Domestic Packages</span></h1>
									<p>Explore Bhutan, Himachal Pradesh, Uttarakhand</p>
                                     <asp:Button ID="Button4" runat="server" Text="Explore More" 
                                        CssClass="btn btn-danger" PostBackUrl="~/custpackages.aspx"  />
								</div>
							</li>
						</ul>
					</div>

			</div>
			<!-- container -->
		</div>
		<!-- //header -->

        <!-- banner-grids -->
		<div class="banner-grids">
			<!-- container -->
			<div class="container">
				<div class="banner-grid-info">
					<h3>TOP DESTINATIONS</h3>
					<p>Discover Increadible India With Us</p>
				</div>
				<div class="top-grids">
					<div class="top-grid">
						<img src="uploads/mh2.jpg" alt="" height="205"/>
						<div class="top-grid-info">
							<h3>Matchless Himachal Pradesh</h3>
							<p>With pine covered hills, lush meadows and magnificent views of the mighty Himalayas, Chail in Himachal Pradesh is an idyllic retreat far from the hustle and bustle of a city life. It is truly a ' Hiker' s Paradise' , with panoramic views of verdant landscapes and the natural serenity of Mother Nature in all her resplendent glory. The opulent Chail Palace, originally built by Maharaja Bhupinder Singh, is now a heritage hotel with charming cottages, elegant lawns and ornate furniture.</p>
						</div>
					</div>
					<div class="top-grid">
						<img src="uploads/ss3.jpg" alt=""  height="205"/>
						<div class="top-grid-info">
							<h3>scenic shimla</h3>
							<p>When you visit Chandigarh, you get a blend of both the worlds, where concrete grandeur co-exists in harmony with gorgeous gardens, while magnificent mountains loom in the horizon. Spend some time in this well-planned city, designed by the Swiss-French architect Le Corbusier. Known as ' City Beautiful' , one can almost smell the mountain air as one enjoys the umpteen gardens in Chandigarh.</p>
						</div>
					</div>
					<div class="top-grid">
						<img src="uploads/dd2.jpg" alt="" height="205"/>
						<div class="top-grid-info">
							<h3>delightful dharmshala</h3>
							<p>Dharamshala: the very word implies that it is a sanctuary to all. This has been proven over the years when the Government of India offered protection to the Tibetan refugees who settled in this hill station. Home to the holy abode of the Dalai Lama at McLeod Ganj, this town located in Kangra Valley has numerous Buddhist monasteries, scattered amidst the hills surrounding this region.</p>
						</div>
					</div>
					<div class="top-grid">
						<img src="uploads/kh3.jpg" alt="" height="205"/>
						<div class="top-grid-info">
							<h3>kerala hills and back water</h3>
							<p>With the seemingly unending expanse of tea estates that cover the rolling hills and valleys wreathed in a cool mist, Munnar is a favoured vacation spot in South India. Located at an altitude of almost 6000 ft. in Idukki district of Kerala, this enchanting town offers visitors a relief from the summer heat and provides breath-taking sceneries and a slice of adventure.</p>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- //container -->
		</div>

	<!-- //banner-grids -->
        <!-- footer -->
		<div class="footer">
			<!-- container -->
			<div class="container">
				<div class="footer-left">
					<p>Developed By <a href="custabout.aspx">Vishal And Dharmesh</a></p>
				</div>
				<div class="footer-right">
					<div class="footer-nav">
						<ul>
							<li><a href="custhome.aspx">HOME</a></li>                                                  
							<li><a href="custpackages.aspx">PACKAGES</a></li>  
							<li><a href="custbooking.aspx">BOOKING</a></li>  
							<li><a href="custgallery.aspx">GALLERY</a></li>  
							<li><a href="custabout.aspx">ABOUT</a></li>  
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //container -->
		</div>
		<!-- //footer -->
    </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
            };
            */

            $().UItoTop({ easingType: 'easeOutQuart' });

        });
								</script>
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- content-Get-in-touch -->
</body>
</html>
