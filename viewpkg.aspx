<%@ Page Language="VB" AutoEventWireup="false" CodeFile="viewpkg.aspx.vb" Inherits="viewpkg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        
		<!-- web-font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'/>
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
		<!-- web-font -->
		<!-- js -->
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
		
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
								<li><a href="custlogin.aspx"><asp:Button ID="Button1" runat="server" class="btn btn-default"/></a></li>
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
        <!-- Content -->
       <hr />
       <hr />

        <div class="container">
            <div class="col-md-5">
                <div class="thumbnail" style="max-width:480px">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="item active">
                                        <img src="<%#Eval("tour_image") %>" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="<%#Eval("tour_image1") %>" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="<%#Eval("tour_image2") %>" alt="">
                                    </div>
                        </div>
                            
                               </ItemTemplate>
                            </asp:Repeater>               
                    </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </a>
                </div>
            </div>
            
            <div class="col-md-7">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="divDet1">
                        <h1 class="pkgNameView"><%#Eval("tour_place")%></h1>
                        <span class="pkgPriceView">Starts from : <%#Eval("tour_amount")%></span>
                        <p class="pkgDaysView">Days : <%#Eval("tour_days")%></p>
                        </div>
                        
                        <div class="divDet1">
                        <h5 class="h5Size">Description</h5>
                            <p>
                                <%# Eval("tour_description")%>
                            </p>
                        
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                        <div class="divDet1">
                            <asp:Button ID="btnPay" runat="server" CssClass="mainButton" Text="BOOK NOW" OnClick="btnPay_Click" /></div>
                        </div>
        </div>
        </div>
        <hr />
        <hr />

        <!-- Content -->
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
								<li><a href="custfeedback.aspx">FEEDBACK</a></li> 
                                <li><a href="custabout.aspx">ABOUT</a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- //container -->
			</div>
	</div>	
    
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
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
