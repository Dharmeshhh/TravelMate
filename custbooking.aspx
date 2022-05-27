 <%@ Page Language="VB" AutoEventWireup="false" CodeFile="custbooking.aspx.vb" Inherits="custbooking" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>BOOKINGS - Travel-Mate</title>
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
    <style type="text/css">
        .style1
        {
            height: 20px;
            width: 311px;
        }
        .style2
        {
            width: 180px;
        }
        .style3
        {
            height: 20px;
            width: 180px;
        }
        .style4
        {
            width: 311px;
        }
        .style5
        {
            width: 333px;
        }
    </style>
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
                                    <asp:Button ID="Button1" runat="server" cssclass="btn btn-default"/></a></li> 
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
           <!-- Sign in start -->
        <div class="container">
            
            <div class="form-horizontal">
            <div class="container">
            <h4>&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                </h4>
                <h4><asp:HiddenField ID="HiddenField1" runat="server" />
                </h4>
            <h3> <asp:Label ID="lblcon" runat="server" Text="Label"></asp:Label> </h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="AccessDataSource1" Class="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="tour_place" HeaderText="Package Name" 
                        SortExpression="tour_place" />
                    <asp:BoundField DataField="amount" HeaderText="Amount" 
                        SortExpression="amount" />
                    <asp:BoundField DataField="person" HeaderText="Person" 
                        SortExpression="person" />
                    <asp:BoundField DataField="departure_date" HeaderText="Departure Date" 
                        SortExpression="departure_date" />
                    <asp:BoundField DataField="status" HeaderText="Status" 
                        SortExpression="status" />
                    <asp:CommandField ShowSelectButton="True" SelectText="Cancel Booking" />
                </Columns>
            <SelectedRowStyle BackColor="LightCyan"
                                ForeColor="DarkBlue"
                                Font-Bold="true" />
            </asp:GridView>

                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/MyDatabase2.accdb" 
                    SelectCommand="SELECT [tour_place], [amount], [person], [departure_date], [status] FROM [booking] WHERE (([c_name] = ?) AND ([status] = ?))">
                    <SelectParameters>
                        <asp:SessionParameter Name="c_name" SessionField="USERNAME" Type="String" />
                        <asp:ControlParameter ControlID="HiddenField1" Name="status" 
                            PropertyName="Value" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>

            </div>

             <asp:Panel ID="Panel2" runat="server">
            <h4>Booking Cancellation</h4>
            
             
                </div>
                <br />

                <div>
                <h5><b>Cancellation Charges</b></h5>
                 <hr />                   
                
                
                

           
                    <table class="table table-bordered">
                        <tr>
                            <td class="style2"><b>
                                No Of Days</b></td>
                            <td class="style4"><b>
                                Deduction( In %)</b></td>
                        </tr>
                        <tr>
                            <td class="style3">
                                1 Day before</td>
                            <td class="style1">
                                50.00</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                2-7 Days before</td>
                            <td class="style1">
                                40.00</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                8-15 Days before</td>
                            <td class="style4">
                                30.00</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                16-30 Days before</td>
                            <td class="style4">
                                20.00</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                (31 and above) Days before</td>
                            <td class="style4">
                                10.00</td>
                        </tr>
                    </table>
                
                
                

           
            </div>
              
                 
              <div class="col-md-6 col-lg-4">
                <h5><b>Perform cancellation&nbsp; </b></h5>
               
                  <h4><p>
                      <asp:Label ID="Label2" runat="server" CssClass="text-primary" Text="Label"></asp:Label>
                      </p></h4>
                 <div class="container" id="s2">
                 
                 
                 
                     <table class="table table-bordered">
                         <tr>
                             <td class="style5">
                                 <b>Actual Amount</b></td>
                             <td>
                                 <asp:Label ID="actualamt" runat="server" Text="Label"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="style5">
                                 <b>Deduction Amount</b></td>
                             <td>
                                 <strong>-</strong>
                             <asp:Label ID="dedamt" runat="server" Text="Label"></asp:Label>
                                 </td>
                             
                         </tr>
                         <tr>
                             <td class="style5">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style5">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style5">
                                 <b>Refundable Amount</b></td>
                             <td>
                             
                             <asp:Label ID="refamt" runat="server" Text="Label"></asp:Label>
                                 </td>
                         </tr>
                     </table>
                     <asp:Button ID="cancel" runat="server" Text="Continue Cancellation" CssClass="btn btn-danger active" />
                 <hr />
                 
                 </div>
         </div>
          </asp:Panel>
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
