<%@ Page Language="VB" AutoEventWireup="false" CodeFile="custgallery.aspx.vb" Inherits="custgallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGIN - Travel-Mate</title>
    <!--gallery-->
    
    <link href="css/gallery.css" rel="stylesheet" type="text/css" />		
    <!--lightboxfiles-->
    
    <script src="js/jquery.chocolat.js" type="text/javascript"></script>
		<script type="text/javascript">
		    $(function () {
		        $('.gallery a').Chocolat();
		    });
		</script>

           <!--gallery-->
<script src="js/modernizr.custom.97074.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
		<!-- web-font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
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
						<span class="menu"><img src="images/menu.png" alt=""></span>
							<ul class="cl-effect-1">
								<li><a href="custhome.aspx">HOME</a></li>                                             
								<li><a href="custpackages.aspx">PACKAGES</a></li>
								<li><a href="custbooking.aspx">BOOKING</a></li> 
								<li><a href="custgallery.aspx">GALLERY</a></li> 
							    <li><a href="custfeedback.aspx">FEEDBACK</a></li> 
                                <li><a href="custabout.aspx">ABOUT</a></li> 
								<li><a href="custlogin.aspx">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-default"/></a></li>
                               </ul> 
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
        <!-- Login Begin -->
        	<div class="gallery" id="tours">
			<div class="container">
				<h3 class="tittle">Tour Gallery</h3>
                
				<div class="gallery-grids">
					<section>
                     <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
						<ul id="da-thumbs" class="da-thumbs">
							<li>
								<a href="<%#Eval("tour_image")%>" class="b-link-stripe b-animate-go thickbox"/>
									<img src="<%#Eval("tour_image")%>" alt="..." />
									<div>
										<h5><%#Eval("tour_place")%></h5>
									</div>
								</a>
							</li>
		
						</ul>
                 </ItemTemplate>
            </asp:Repeater>
						<div class="clearfix"></div>
					</section> 

				<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
				<script type="text/javascript">
				    $(function () {
				        $('#da-thumbs > li').each(function () { $(this).hoverdir(); });
				    });
				</script>
			</div>
   
		</div>
        </div>
					<script type="text/javascript">
					    $(document).ready(function () {
					        /*
					        var defaults = {
					        containerID: 'home', // fading element id
					        containerHoverID: 'toTopHover', // fading element hover id
					        scrollSpeed: 1200,
					        easingType: 'linear' 
					        };
					        */

					        $().UItoTop({ easingType: 'easeOutQuart' });

					    });
					</script>
        <!-- Login end -->

        <!-- footer -->
			<div class="footer footer-bottom">
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
