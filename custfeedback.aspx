<%@ Page Language="VB" AutoEventWireup="false" CodeFile="custfeedback.aspx.vb" Inherits="custfeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/client.css" rel="stylesheet" type="text/css" />
     <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
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
                                <li><a href="custabout.aspx">ABOUT</a></li> 
								<li><a href="custlogin.aspx">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-default" 
                                        ValidationGroup="b"/></a></li>
                             
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
        <!--Feedback Section-->
        <div class="mail">
        <div class="container">
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="AccessDataSource1"  Class="table table-bordered" 
                DataKeyNames="recpnm">
                <Columns>
                    <asp:BoundField DataField="recpnm" HeaderText="Feedback sent from" 
                        ReadOnly="True" SortExpression="recpnm" />
                    <asp:BoundField DataField="fmsg" HeaderText="Your Feedback" 
                        SortExpression="fmsg" />
                    <asp:BoundField DataField="fdate" HeaderText="Feedback Date" 
                        SortExpression="fdate" />
                    <asp:BoundField DataField="freply" HeaderText="Feedback Reply from Admin" 
                        SortExpression="freply" />
                    <asp:BoundField DataField="rdate" HeaderText="Reply Date" 
                        SortExpression="rdate" />
                </Columns>
            </asp:GridView>
        
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/MyDatabase2.accdb" 
                SelectCommand="SELECT * FROM [adm_feedback] WHERE ([recpnm] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="recpnm" SessionField="USERNAME" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        
        </div>
            <!-- container -->
			<div class="container">
				<div class="mail-info-grids">
					<div class="col-md-6 mail-info-grid">
						<h3>Contact Information</h3>
						<p>Travel-Mate provides 24/7 support for all its holiday packages. Freebies go without it.

If you have any questions regarding the services of the chosen package, ask us to help you on a free basis.
						</p>
						<h6>Travel-Mate Inc.
						<span>Bhagwati Sankul,</span>
							Near Eru Char Rasta, Navsari 396 450.
						</h6>
						<p>Telephone: 02637 - 282558
						<span>FAX: +91 234 567 9871</span>
						E-mail: <a href="#">mail@travelmate.com</a>
						</p>
					</div>
					<div class="col-md-6 contact-form">
						<form >
                            <asp:TextBox ID="tbFname" runat="server" placeholder="Name:" CssClass="form-control"></asp:TextBox>
                            <asp:TextBox ID="tbMail" runat="server" placeholder="Email:" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="tbMail" CssClass="text-danger" Display="Dynamic" 
                                    ErrorMessage="Email is not valid." 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ValidationGroup="v1"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="tbMSG" runat="server" placeholder="Feedback:"  
                                TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <asp:Button ID="btnFeedback" runat="server" Text="SEND"  />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- //container -->
		</div>





		<!-- //mail -->
		<!-- footer -->
		
			<!-- container -->
        <!--Feedback over-->
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
							<li><a href="#"></a></li>  
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
