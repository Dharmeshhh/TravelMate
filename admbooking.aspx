<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admbooking.aspx.vb" Inherits="admbooking" %>
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
						<span class="menu"><img src="images/menu.png" alt=""></span>
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
         <div class="container">
		    <div style="padding-top:40px;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>Search Bookings Departure Date and Status Wise</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <label>From Date:</label>
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                    ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" Width="45px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                        VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                            </div>
                            <div class="col-md-3">
                                <label>To Date:</label>
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                    ForeColor="Black" Height="85px" NextPrevFormat="FullMonth" Width="26px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                        VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                                    </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>Status</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem>confirm</asp:ListItem>
                                    <asp:ListItem>cancel</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <div class="container" >   
        <div class="form-horizontal">
         <div class="container">      
<h1 class="tittle"  align="center"><b>Bookings</b></h1>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="AccessDataSource1" Class="table table-bordered">
        <EmptyDataTemplate><b>No Bookings were found between the selected dates or status.</b></EmptyDataTemplate>
    <Columns>
         <asp:BoundField DataField="c_name" HeaderText="Customer Name" 
            SortExpression="c_name" />
        <asp:BoundField DataField="tour_place" HeaderText="Package Name" 
            SortExpression="tour_place" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:BoundField DataField="mobile_no" HeaderText="Mobile Number" 
            SortExpression="mobile_no" />
        <asp:BoundField DataField="address" HeaderText="Address" 
            SortExpression="address" />
        <asp:BoundField DataField="amount" HeaderText="Amount" 
            SortExpression="amount" />
        <asp:BoundField DataField="person" HeaderText="Person" 
            SortExpression="person" />
        <asp:BoundField DataField="booking_date" HeaderText="Booking Date" 
            SortExpression="booking_date" />
        <asp:BoundField DataField="departure_date" HeaderText="Departure Date" 
            SortExpression="departure_date" />
        <asp:BoundField DataField="status" HeaderText="Status" 
            SortExpression="status" />
    </Columns>
                </asp:GridView>
             <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                 DataFile="~/App_Data/MyDatabase2.accdb" 
                 SelectCommand="SELECT [c_name], [tour_place], [email], [mobile_no], [address], [amount], [person], [booking_date], [departure_date], [status] FROM [booking] WHERE (([departure_date] &gt;= ?) AND ([departure_date] &lt;= ?) AND ([status] = ?))">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="Calendar1" Name="departure_date" 
                         PropertyName="SelectedDate" Type="DateTime" />
                     <asp:ControlParameter ControlID="Calendar2" Name="departure_date2" 
                         PropertyName="SelectedDate" Type="DateTime" />
                     <asp:ControlParameter ControlID="DropDownList1" Name="status" 
                         PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:AccessDataSource>
    </div>
    </div>
    </div>
    <div class="container">
    <h1 class="tittle" align="center"><b>PAYMENT</b></h1>
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered" 
            AutoGenerateColumns="False" DataSourceID="AccessDataSource2">
            <Columns>
                <asp:BoundField DataField="customername" HeaderText="CUSTOMER NAME" 
                    SortExpression="customername" />
                <asp:BoundField DataField="cardownername" HeaderText="NAME ON CARD" 
                    SortExpression="cardownername" />
                <asp:BoundField DataField="cardnumber" HeaderText="CARD NUMBER" 
                    SortExpression="cardnumber" />
                <asp:BoundField DataField="amount" HeaderText="AMOUNT" 
                    SortExpression="amount" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/MyDatabase2.accdb" 
            SelectCommand="SELECT [customername], [cardownername], [cardnumber], [amount] FROM [payment]">
        </asp:AccessDataSource>
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

