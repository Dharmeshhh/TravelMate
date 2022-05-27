<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admhome.aspx.vb" Inherits="admhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN HOME - TRAVEL-MATE</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="assets/css/material-dashboard.css" rel="stylesheet" type="text/css" />
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
           <div class="head-bg green">
			<!-- container -->
			<div class="container">
				<div class="head-logo">
					<a href="admhome.aspx"><img src="images/logo1.png" alt="" /></a>
				</div>
				<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=""/></span>
							<ul class="cl-effect-1">                                            
								<li><a href="admhome.aspx">HOME</a></li>                                             
								<li><a href="admpackage.aspx">PACKAGES</a></li>
								<li><a href="admbooking.aspx">BOOKING</a></li>
                                <li><a href="admusers.aspx">CUSTOMER</a></li> 
								<li><a href="admfeedback.aspx">FEEDBACK</a></li> 
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
					

			</div>
			<!-- container -->
	
		<!-- //header -->
         <div class="content">
				<div class="container-fluid">
                <hr />
                <hr />
                <hr />
                <hr />

					<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="orange">
								<a href="admusers.aspx" ><i class="material-icons">New Registrations</i></a>
								</div>
								<div class="card-content">
									<p class="category"></p>
									<h3 class="title">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><small>Users</small></h3>
								</div>
								
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="green">
									<a href="admbooking.aspx" ><i class="material-icons">Bookings</i></a>
								</div>
								<div class="card-content">
									<p class="category">Total</p>
									<h3 class="title">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons"></i>In Last 24 Hours
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="red">
									<a href="admbooking.aspx" ><i class="material-icons">Cancellations</i></a>
								</div>
								<div class="card-content">
									<p class="category">Total</p>
									<h3 class="title">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h3>
								</div>
								
							</div>
						</div>

						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="blue">
									<a href="admfeedback.aspx" ><i class="material-icons">Feedbacks</i></a>
								</div>
								<div class="card-content">
									<p class="category">Total</p>
									<h3 class="title">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h3>
								</div>
								
							</div>
						</div>
					</div>
                    </div>
                    </div>

         <!-- footer -->
         <br />
         <br />
         <br />
         <br />
         <br />
           <br />
         <br />
         <br />

  
		<div class="footer">
			<!-- container -->
			<div class="container">
				<div class="footer-left">
					<p>Developed By <a href="custabout.aspx">Vishal And Dharmesh</a></p>
				</div>
				<div class="footer-right">
					<div class="footer-nav">
						<ul>
							<li><a href="admhome.aspx">HOME</a></li>                                                  
								<li><a href="admpackage.aspx">PACKAGES</a></li>  
								<li><a href="admbooking.aspx">BOOKING</a></li>
                                <li><a href="admusers.aspx">CUSTOMER</a></li>  
								<li><a href="admfeedback.aspx">FEEDBACK</a></li>  
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
