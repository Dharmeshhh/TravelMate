<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admpackage.aspx.vb" Inherits="admpackage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Package Management - Travel-Mate</title>
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
						<span class="menu"><img src="images/menu.png" alt="" /></span>
							<ul class="cl-effect-1">
								<li><a href="admhome.aspx">HOME</a></li>                                             
								<li><a href="admpackage.aspx">PACKAGES</a></li>
								<li><a href="admbooking.aspx">BOOKING</a></li>
                                <li><a href="admusers.aspx">CUSTOMER</a></li> 
								<li><a href="admfeedback.aspx">FEEDBACK</a></li> 
								<li><a href="custlogin.aspx">
                                    <asp:Button ID="Button4" runat="server" class="btn btn-default" 
                                        ValidationGroup="v1"/></a></li>  
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
        <!-- package up begin -->
       <div class="container">
            <div class="col-md-4 col-left-sec">
                <div class="form-horizontal">
                    <h4 >Manage Package
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </h4>
                <hr />
                    <div class="form-group">
                        <label>Place Image 1</label>
                    <div class="">
                        <asp:FileUpload ID="FileUpload1" runat="server"   />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour Image is required." ControlToValidate="FileUpload1" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="100" Width="100" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
                 <div class="form-group">
                    <label>Place Image 2</label>
                    <div class="">
                        <asp:FileUpload ID="FileUpload2" runat="server"   />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour Image is required." ControlToValidate="FileUpload2" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="100" Width="100" />
                    </div>
                </div>
                 <div class="form-group">
                    <label>Place Image 3</label>
                    <div class="">
                        <asp:FileUpload ID="FileUpload3" runat="server"   />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour Image is required." ControlToValidate="FileUpload3" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />
                    </div>
                </div>

                <div class="form-group">
                    <label>Tour Name</label>
                    <div class="">
                        <asp:TextBox ID="tourplace" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour place is required." ControlToValidate="tourplace"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <label>From</label>
                    <div class="">
                        <asp:TextBox ID="txtfrom" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour place is required." ControlToValidate="txtfrom"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <label>To</label>
                    <div class="">
                        <asp:TextBox ID="txtto" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour place is required." ControlToValidate="txtto"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label>Tour Type</label>
                    <div class="">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown" 
                            DataSourceID="AccessDataSource2" DataTextField="tour_type" 
                            DataValueField="tour_type">
                        </asp:DropDownList>
                        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                            DataFile="~/App_Data/MyDatabase2.accdb" 
                            SelectCommand="SELECT DISTINCT [tour_type] FROM [package_mst]">
                        </asp:AccessDataSource>
                    </div>
                </div>

                   <div class="form-group">
                    <label>Days</label>
                    <div class="">
                        <asp:TextBox ID="tourdays" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour days is required." ControlToValidate="tourdays"></asp:RequiredFieldValidator>
                    </div>
                </div>

                     <div class="form-group">
                    <label>Amount</label>
                    <div class="">
                        <asp:TextBox ID="touramount" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" 
                            ErrorMessage="Tour Amount is required." ControlToValidate="touramount"></asp:RequiredFieldValidator>
                    </div>
                </div>

                
                     <div class="form-group">
                    <label>Description</label>
                    <div class="">
                        <asp:TextBox ID="tourdescription" CssClass="form-control" runat="server" 
                            TextMode="MultiLine"></asp:TextBox>
                        </div>
                </div>



                    <div class="form-group">                                                                                
                        <div class="">
                            <asp:Button ID="Button1" runat="server" Text="Add Package" 
                                CssClass="btn btn-primary" ValidationGroup="a" />
                            <asp:Button ID="Button2" runat="server" Text="Update Package" 
                                CssClass="btn btn-success" ValidationGroup="b" />
                        </div>
                    </div>
          </div>
             </div>
             
        <div class="col-md-6 col-right-sec" style="padding-top:50px">

                <h3>Packages</h3>
            
              
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          DataKeyNames="tour_id" DataSourceID="AccessDataSource1" 
                    Class="table table-bordered" Height="233px" Width="800px" 
                    AllowPaging="True" PageSize="5">
                          <Columns>
                              <asp:BoundField DataField="tour_id" HeaderText="Tour_id" InsertVisible="False" 
                                  ReadOnly="True" SortExpression="tour_id" />
                              <asp:BoundField DataField="tour_place" HeaderText="Tour place" 
                                  SortExpression="tour_place" />
                              <asp:BoundField DataField="tour_type" HeaderText="Tour Type" 
                                  SortExpression="tour_type" />
                              <asp:BoundField DataField="tour_days" HeaderText="Tour Days" 
                                  SortExpression="tour_days" />
                              <asp:BoundField DataField="tour_amount" HeaderText="Tour Amount" 
                                  SortExpression="tour_amount" />
                              <asp:BoundField DataField="tour_description" HeaderText="Tour Description" 
                                  SortExpression="tour_description" />
                              <asp:BoundField DataField="pkg_from" HeaderText="From" 
                                  SortExpression="pkg_from" />
                              <asp:BoundField DataField="pkg_to" HeaderText="To" 
                                  SortExpression="pkg_to" />
                              <asp:CommandField ShowDeleteButton="True" ButtonType="Button" 
                                  DeleteText="Delete Tour" ShowSelectButton="True" SelectText="Update Tour" />
                          </Columns>
                          <SelectedRowStyle BackColor="LightCyan"
                                ForeColor="DarkBlue"
                                Font-Bold="true" />
            </asp:GridView>
                      <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/MyDatabase2.accdb" 
                    DeleteCommand="DELETE FROM [package_mst] WHERE [tour_id] = ?" 
                    InsertCommand="INSERT INTO [package_mst] ([tour_id], [tour_place], [tour_type], [tour_days], [tour_amount], [tour_description], [pkg_from], [pkg_to]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT [tour_id], [tour_place], [tour_type], [tour_days], [tour_amount], [tour_description], [pkg_from], [pkg_to] FROM [package_mst]" 
                    UpdateCommand="UPDATE [package_mst] SET [tour_place] = ?, [tour_type] = ?, [tour_days] = ?, [tour_amount] = ?, [tour_description] = ?, [pkg_from] = ?, [pkg_to] = ? WHERE [tour_id] = ?">
                          <DeleteParameters>
                              <asp:Parameter Name="tour_id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="tour_id" Type="Int32" />
                              <asp:Parameter Name="tour_place" Type="String" />
                              <asp:Parameter Name="tour_type" Type="String" />
                              <asp:Parameter Name="tour_days" Type="String" />
                              <asp:Parameter Name="tour_amount" Type="Int32" />
                              <asp:Parameter Name="tour_description" Type="String" />
                              <asp:Parameter Name="pkg_from" Type="String" />
                              <asp:Parameter Name="pkg_to" Type="String" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="tour_place" Type="String" />
                              <asp:Parameter Name="tour_type" Type="String" />
                              <asp:Parameter Name="tour_days" Type="String" />
                              <asp:Parameter Name="tour_amount" Type="Int32" />
                              <asp:Parameter Name="tour_description" Type="String" />
                              <asp:Parameter Name="pkg_from" Type="String" />
                              <asp:Parameter Name="pkg_to" Type="String" />
                              <asp:Parameter Name="tour_id" Type="Int32" />
                          </UpdateParameters>
                </asp:AccessDataSource>
                
</div>
</div> 
        <!-- package up end -->
        <!-- footer -->
			<div class="footer">
				<!-- container -->
				<div class="container">
				<p>Developed By <a href="custabout.aspx">Vishal And Dharmesh</a></p>
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
