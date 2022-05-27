<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admfeedback.aspx.vb" Inherits="admfeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>FEEDBACKS - Travel-Mate</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <link href="css/custom.css" rel="stylesheet" type="text/css" />
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
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
            <div class= "content"> 
                <h3 class="tittle" align="center">Feedback<span class="fa fa-comment-o"></span></h3>
            </div>
            <hr />
            <div class="panel panel-default">
                <div class="panel-heading">All Feedbacks<span class="fa fa-comment-o"></span></div>
                <div class="container">
                <div class="form-horizontal">
                <div class="form-group">
                <br />
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="To"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtto" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                </div>
                    <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Reply"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtrep" CssClass="form-control" runat="server" 
                            TextMode="MultiLine"></asp:TextBox>
                            <br />
                          
                            <asp:Button ID="Btnsend" runat="server" Text="Send" CssClass="btn btn-primary" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        </div>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        </div>
             
          
                </div>
                </div>
                 <div class="container">
                 <h3>Feedbacks from Customers</h3>
                <asp:GridView ID="GridView1" runat="server" Class="table table-bordered" 
                    AutoGenerateColumns="False" DataKeyNames="cname" 
                         DataSourceID="AccessDataSource1" Width="767px">
                    <Columns>
                        <asp:BoundField DataField="cname" HeaderText="Customer Name" ReadOnly="True" 
                            SortExpression="cname" />
                        <asp:BoundField DataField="fdate" HeaderText="Feedback Date" 
                            SortExpression="fdate" />
                        <asp:BoundField DataField="msg" HeaderText="Feedback" SortExpression="msg" />
                        <asp:CommandField SelectText="Reply" ShowDeleteButton="True" 
                            ShowSelectButton="True" />
                    </Columns>
                    <SelectedRowStyle BackColor="LightCyan"
                                ForeColor="DarkBlue"
                                Font-Bold="true" />
                </asp:GridView>
                     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                         DataFile="~/App_Data/MyDatabase2.accdb" 
                         DeleteCommand="DELETE  FROM [cust_feedback] WHERE [cname] = ?" 
                         InsertCommand="INSERT INTO [cust_feedback] ([cname], [fdate], [msg]) VALUES (?, ?, ?)" 
                         SelectCommand="SELECT * FROM [cust_feedback]" 
                         UpdateCommand="UPDATE [cust_feedback] SET [fdate] = ?, [msg] = ? WHERE (([cname] = ?) OR ([cname] IS NULL AND ? IS NULL))">
                         <DeleteParameters>
                             <asp:Parameter Name="cname" Type="String" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="cname" Type="String" />
                             <asp:Parameter Name="fdate" Type="DateTime" />
                             <asp:Parameter Name="msg" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="fdate" Type="DateTime" />
                             <asp:Parameter Name="msg" Type="String" />
                             <asp:Parameter Name="cname" Type="String" />
                         </UpdateParameters>
                     </asp:AccessDataSource>
                </div>
            </div>
            <div class="container">
            <h3>Feedbacks from Visitors</h3>
                <asp:GridView ID="GridView2" runat="server" Class="table table-bordered" 
                    AutoGenerateColumns="False" DataKeyNames="email" 
                    DataSourceID="AccessDataSource2">
                    <Columns>
                        <asp:BoundField DataField="vname" HeaderText="Visitor Name" 
                            SortExpression="vname" />
                        <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" 
                            SortExpression="email" />
                        <asp:BoundField DataField="fdate" HeaderText="Feedback Date" 
                            SortExpression="fdate" />
                        <asp:BoundField DataField="msg" HeaderText="Feedback" SortExpression="msg" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/App_Data/MyDatabase2.accdb" 
                    DeleteCommand="DELETE FROM [vis_feedback] WHERE [email] = ?" 
                    InsertCommand="INSERT INTO [vis_feedback] ([vname], [email], [fdate], [msg]) VALUES (?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [vis_feedback]" 
                    UpdateCommand="UPDATE [vis_feedback] SET [vname] = ?, [fdate] = ?, [msg] = ? WHERE (([email] = ?) OR ([email] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="vname" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="fdate" Type="DateTime" />
                        <asp:Parameter Name="msg" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="vname" Type="String" />
                        <asp:Parameter Name="fdate" Type="DateTime" />
                        <asp:Parameter Name="msg" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </UpdateParameters>
                </asp:AccessDataSource>
            
            </div>
        </div>
            <!--Table-->
            
                
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
