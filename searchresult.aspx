<%@ Page Language="VB" AutoEventWireup="false" CodeFile="searchresult.aspx.vb" Inherits="searchresult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SEARCH</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
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
		    <div style="padding-top:40px;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>Search Your Ideal Package</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <label>Leaving From:</label>
                                <asp:DropDownList ID="ddlFrom" runat="server" DataSourceID="AccessDataSource1" 
                                    DataTextField="pkg_from" DataValueField="pkg_from">
                                </asp:DropDownList>
                                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/App_Data/MyDatabase2.accdb" 
                                SelectCommand="SELECT DISTINCT [pkg_from] FROM [package_mst]">
                                </asp:AccessDataSource>
                            </div>
                            <div class="col-md-3">
                                <label>Going To:</label>
                                    <asp:DropDownList ID="ddlTo" runat="server" DataSourceID="AccessDataSource2" 
                                DataTextField="pkg_to" DataValueField="pkg_to">
                                    </asp:DropDownList>
                                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                                DataFile="~/App_Data/MyDatabase2.accdb" 
                                SelectCommand="SELECT DISTINCT [pkg_to] FROM [package_mst]">
                                    </asp:AccessDataSource>
                            </div>
                            <div class="col-md-3">
                                <label>Type:</label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Hill Station</asp:ListItem>
                                    <asp:ListItem>Weekend Trip</asp:ListItem>
                                    <asp:ListItem>Adventure</asp:ListItem>
                                    <asp:ListItem>Honeymoon</asp:ListItem>
                                    <asp:ListItem Value="International"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                <label>Budget:</label>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="5000">&lt;=5000</asp:ListItem>
                                    <asp:ListItem Value="10000">&lt;=10000</asp:ListItem>
                                    <asp:ListItem Value="20000">&lt;=20000</asp:ListItem>
                                    <asp:ListItem Value="35000">&lt;=35000</asp:ListItem>
                                    <asp:ListItem Value="50000">&lt;=50000</asp:ListItem>
                                    <asp:ListItem>&lt;=5000</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div style="padding-top:25px;">
                            
                                <asp:Button ID="Button2" runat="server" Text="Search" CssClass="btn btn-info"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
        <div class="row" style="padding-top:50px;">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <div class="col-sm-3 col-md-3">
                 <a style="text-decoration:none;" href="viewpkg.aspx?tid=<%#Eval("tour_id") %>&tnm=<%#Eval("tour_place") %>&amt=<%#Eval("tour_amount") %> ">
                    <div class="thumbnail" >
                        <h3><%#Eval("tour_place")%></h3>
                        <img src="<%#Eval("tour_image")%>" alt="..." height="203" width="360"/ >
                            <div class="caption">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        INCLUDES<br />
                                        <span class="fa fa-plane"></span>
                                        <span class="fa fa-hotel"></span>
                                        <span class="fa fa-car"></span>
                                        
                                        <span class="fa fa-tripadvisor"></span>
                                    </div>
                                </div>
                                <div class="pkgname"><%# Eval("tour_type")%></div>
                                <h4>Prices Starting: <span class="fa fa-inr"></span><%# Eval("tour_amount")%></h4>
                                
                            </div>
                    </div>
                </a>
                </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
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
