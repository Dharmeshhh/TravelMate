<%@ Page Language="VB" AutoEventWireup="false" CodeFile="custabout.aspx.vb" Inherits="custabout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>


        <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/profile.css" rel="stylesheet" type="text/css" />
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- web-font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'/>
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
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
        <div class="head-bg green">
			<!-- container -->
			<div class="container">
				<div class="head-logo">
					<a href="custhome.aspx"><img src="images/logo1.png" alt="" /></a>
				</div>
				<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=""/></span>
							<ul class="cl-effect-1">
								<li><a href="custhome.aspx">HOME</a></li>                                             
								<li><a href="custpackages.aspx">PACKAGES</a></li>
								<li><a href="custbooking.aspx">BOOKING</a></li> 
								<li><a href="custgallery.aspx">GALLERY</a></li> 
                                <li><a href="custfeedback.aspx">FEEDBACK</a></li> 
                               
								<li><a href="custlogin.aspx">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-default"/></a></li>
                             
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
        <div class="container">
        <div class="row">
            <div class="col-md-6" style="padding-top:50px;">
                <h2 align="center">Keep it Simple</h2>
                <p>We come together each day to fulfill a promise of offering the single most comprehensive travel experience to users, through award winning Mobile and Desktop solutions. With intuitive products that have the largest selection of flights, hotels and trains, we keep customers at the centre of everything we do.</p>
                <p align="center"><span class="fa fa-plane" style="font-size:70px;"></span> <span class="fa fa-hotel" style="font-size:70px;"></span> <span class="fa fa-train" style="font-size:70px;"></span></p>
            
            </div>
            <div class="col-md-3" style="padding-top:50px;">
    		    <div class="card card-profile">
    							<div class="card-avatar">
    							
    									<img class="img-circle" src="images/2017.JPG" alt="" width="140" height="140" />
    						
    							</div>

    							<div class="content">
    								<h6 class="category text-gray"><b>CEO / Founder</b></h6>
    								<h4 class="card-title"><b>Dharmesh Prajapati</b></h4>
    								<p class="card-content">
    								Yes, I am too determined and believe in smart work. My Goals don't stop for anyone either you support me or I make it happen alone. Aspiring Web developer and an ethical hacker. Win with me or watch me win <span class="fa fa-empire"></span>.</p>
    								
    							</div>
    			</div>
             </div>
            
            <div class="col-md-3" style="padding-top:50px;">
    						<div class="card card-profile">
    							<div class="card-avatar">
    								
    									<img class="img-circle" src="images/v.jpg" alt="" width="140" height="140"/>
    								
    							</div>

    							<div class="content">
    								<h6 class="category text-gray"><b>Co-Founder</b></h6>
    								<h4 class="card-title"><b>Vishal Patel</b></h4>
    								<p class="card-content">
    									NVS based 19-something web and software developer and founder currently developing for exam and running my business in my (limited) free time<span class="fa fa-empire"></span>. 
    								</p>
    								
    							</div>
    						</div>
            </div>
            </div>
            </div>
        </div>
        <div class="container">
            <h2 align="center">At your service. Anywhere. Anytime</h2>
            <p align="center"><span class="fa fa-whatsapp" style="font-size:70px;"></span><span class="fa fa-facebook" style="font-size:70px;"></span> <span class="fa fa-twitter" style="font-size:70px;"></span> <span class="fa fa-linkedin" style="font-size:70px;"></span></p>
            <p align="center">We&#8217;re never too far away from you. Give us a shout for any assistance on new bookings, cancellations or amendments, and we&#8217;ll spring into action immediately, because we are wherever you are.</p>
        </div>
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
