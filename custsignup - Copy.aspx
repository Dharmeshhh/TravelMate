<%@ Page Language="VB" AutoEventWireup="false" CodeFile="custsignup.aspx.vb" Inherits="custsignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SIGN UP - Travel-Mate</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
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
								<li><a href="custlogin.aspx">LOGIN</a></li>  
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
        <!-- sign up begin -->
           <div class="container">
                <div class="col-md-6 col-left-sec" style="padding-top:30px">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3>Create Your Travel-Mate Account</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Full Name</label>
                                <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tbName" CssClass="text-danger" Display="Dynamic" 
                                    ErrorMessage="Please enter your name." ValidationGroup="v1"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <asp:TextBox ID="tbUname" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tbUname" CssClass="text-danger" Display="Dynamic" 
                                    ErrorMessage="Username is required." ValidationGroup="v1"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="tbMobile" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="tbMobile" ErrorMessage="Invalid Mobile Number." 
                                    ValidationGroup="v1" CssClass="text-danger" 
                                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label>Email Id</label>
                                <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="tbEmail" CssClass="text-danger" Display="Dynamic" 
                                    ErrorMessage="Email is not valid." 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ValidationGroup="v1"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="tbPass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tbPass" CssClass="text-danger" Display="Dynamic" 
                                    ErrorMessage="Password is required." ValidationGroup="v1"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="tbCPass" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="tbPass" ControlToValidate="tbCPass" CssClass="text-danger" 
                                    Display="Dynamic" ErrorMessage="Password does not match." ValidationGroup="v1"></asp:CompareValidator>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btSignup" runat="server" class="btn btn-success" Text="Sign Up" 
                                    ValidationGroup="v1" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 hidden-xs col-right-sec" style="padding-top:30px">
                    <h3>Do more with a Travel-Mate Account</h3>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="yt-list">
                                <li><i class="fa fa-hourglass" style="font-size:20px;"></i> Access booking history with upcoming trips</li>
                               <br />
                               <li><i class="fa fa-check-square-o" style="font-size:20px;"></i> Make checkouts simpler</li>
                                <br />
                                <li><i class="fa fa-envelope-o" style="font-size:20px;"></i> Enter your contact details only once</li>
                                <br />
                                <li><i class="fa fa-chain" style="font-size:20px;"></i> Get alerts for low fares</li>
                            </ul>
                        </div>
                        <div class="col-md-12">
                            <br />
                            <div class="form-group">
                                <label>You have Travel-Mate Account? Login now!</label>
                                 <br />
                                <asp:Button ID="Button1" runat="server" Text="Login Here" 
                                    CssClass="btn btn-success" PostBackUrl="~/custlogin.aspx" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- sign up end -->
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
							<li><a href="custlogin.aspx">LOGIN</a></li>  
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
