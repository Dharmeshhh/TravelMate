<%@ Page Language="VB" AutoEventWireup="false" CodeFile="booknow.aspx.vb" Inherits="booknow" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGIN - Travel-Mate</title>
    <!--gallery-->
</script>
    <link href="css/gallery.css" rel="stylesheet" type="text/css" />

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
		        $("#txtper").on("blur", function () {

		            var tourAmount = parseInt($("#hdnAmount").val());
		            var personCount = parseInt($(this).val());
		            $("#lblamt").text(tourAmount * personCount);
		            $("#HiddenField1").value = tourAmount * personCount;


		        });
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
     <asp:HiddenField ID="hdnAmount" runat="server" />
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
                                    <asp:Button ID="Button1" runat="server" cssclass="btn btn-default" 
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
		    <asp:HiddenField ID="HiddenField1" runat="server" />
		</div>
        <!-- Login Begin -->
        	      
                <div class="container">
            <div class="form-horizontal">
            <h3 ><b>Book Your Trip - <asp:Label ID="un" runat="server" Text="Label"></asp:Label></b></h3>
            <hr />
                
         
              
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtadd" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" 
                            ErrorMessage="Address is required." ControlToValidate="txtadd" 
                            ValidationGroup="v" ></asp:RequiredFieldValidator>
                    </div>
                </div>
                
     
                   <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Persons"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtper" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" 
                            ErrorMessage="Persons is required." ControlToValidate="txtper" 
                            ValidationGroup="v"></asp:RequiredFieldValidator>
                    </div>
                </div>
                

                

                
                     <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Amount="></asp:Label>
                    <div class="col-md-3">
                        <%--<asp:Label ID="lblamt" runat="server" CssClass="col-md-2 control-label"></asp:Label>--%>
                       <b> <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
                   </b><label id="lblamt"></label>
                        </div>
                </div>
                     <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Departure Date"></asp:Label>
                    <div class="col-md-3">
                       <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                            BorderColor="White" Font-Names="Verdana" 
                            Font-Size="9pt" ForeColor="Black" Height="67px" NextPrevFormat="FullMonth" 
                            Width="285px" BorderWidth="1px" >
                           <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                           <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                               VerticalAlign="Bottom" />
                           <OtherMonthDayStyle ForeColor="#999999" />
                           <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                           <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" 
                               ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                           <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </div>
                </div>
                      <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" 
                              Text="Name on  Your Visa Card"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="cardnm" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="cardnm" CssClass="text-danger" 
                            ErrorMessage="Please enter name." 
                            ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="v"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" 
                        Text="Visa Card Number"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="cardno" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="cardno" CssClass="text-danger" 
                            ErrorMessage="Invalid card number." 
                            ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$" ValidationGroup="v"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" 
                        Text="Expiry Date"></asp:Label>
                        <div class="col-md-3">
                            <asp:Label ID="Label10" runat="server"  
                        Text="Month : "></asp:Label>

                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label11" runat="server"  
                        Text="Year : "></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                                <asp:ListItem>2027</asp:ListItem>
                                <asp:ListItem>2028</asp:ListItem>
                                <asp:ListItem>2029</asp:ListItem>
                                <asp:ListItem>2030</asp:ListItem>
                                <asp:ListItem>2031</asp:ListItem>
                                <asp:ListItem>2032</asp:ListItem>
                                <asp:ListItem>2033</asp:ListItem>
                                <asp:ListItem>2034</asp:ListItem>
                                <asp:ListItem>2035</asp:ListItem>
                                <asp:ListItem>2036</asp:ListItem>
                                <asp:ListItem>2037</asp:ListItem>
                                <asp:ListItem>2038</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                </div>
                   <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="CVV"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="cardcvv" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl="~/images/credit-card-numbers-with-cvv.jpg" height="100px" 
                            Width="300px"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="cardcvv" CssClass="text-danger" 
                            ErrorMessage="cvv contains only 3 digits." 
                            ValidationExpression="^[0-9]{3}$" ValidationGroup="v"></asp:RegularExpressionValidator>
                    </div>
                </div>

                    <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="Button2" runat="server" Text="Continue" 
                                CssClass="btn btn-default" ValidationGroup="v" />
                           
                        </div>
                    </div>
            </div>
        </div>
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
