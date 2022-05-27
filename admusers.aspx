<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admusers.aspx.vb" Inherits="admusers" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SIGN UP - Travel-Mate</title>
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
       <div class="container" >   
        <div class="form-horizontal">
         <div class="container">      
<h1 class="tittle" align="center"><b>CUSTOMERS</b> <span class="fa fa-user"></span></h1>
<br />
<br />
<br />
<br />
             <asp:GridView ID="GridView1" runat="server" Class="table table-bordered" 
                 AutoGenerateColumns="False" DataKeyNames="c_uname" 
                 DataSourceID="AccessDataSource1">
                 <Columns>
                       <asp:BoundField DataField="c_uname" HeaderText="USERNAME" ReadOnly="True" 
                         SortExpression="c_uname" />
                     <asp:BoundField DataField="c_name" HeaderText="CUSTOMER NAME" 
                         SortExpression="c_name" />
                     <asp:BoundField DataField="c_email" HeaderText="EMAIL" 
                         SortExpression="c_email" />
                     <asp:BoundField DataField="c_mobile" HeaderText="MOBILE NUMBER" 
                         SortExpression="c_mobile" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
             </asp:GridView>

             <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                 DataFile="~/App_Data/MyDatabase2.accdb" 
                 DeleteCommand="DELETE FROM [customer_mst] WHERE [c_uname] = ?" 
                 InsertCommand="INSERT INTO [customer_mst] ([c_uname], [c_name], [c_email], [c_mobile]) VALUES (?, ?, ?, ?)" 
                 SelectCommand="SELECT [c_uname], [c_name], [c_email], [c_mobile] FROM [customer_mst] WHERE ([c_uname] &lt;&gt; ?)" 
                 UpdateCommand="UPDATE [customer_mst] SET [c_name] = ?, [c_email] = ?, [c_mobile] = ? WHERE (([c_uname] = ?) OR ([c_uname] IS NULL AND ? IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="c_uname" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="c_uname" Type="String" />
                     <asp:Parameter Name="c_name" Type="String" />
                     <asp:Parameter Name="c_email" Type="String" />
                     <asp:Parameter Name="c_mobile" Type="String" />
                 </InsertParameters>
                 <SelectParameters>
                     <asp:SessionParameter Name="c_uname" SessionField="USERNAME" Type="String" />
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="c_name" Type="String" />
                     <asp:Parameter Name="c_email" Type="String" />
                     <asp:Parameter Name="c_mobile" Type="String" />
                     <asp:Parameter Name="c_uname" Type="String" />
                 </UpdateParameters>
             </asp:AccessDataSource>

    </div>
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

