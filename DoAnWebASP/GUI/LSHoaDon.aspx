<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LSHoaDon.aspx.cs" Inherits="GUI.LSHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-breadcrumbs-->
     
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><asp:HyperLink ID="hplTrangChu" runat="server" NavigateUrl="~/TrangChu.aspx">Home</asp:HyperLink></li>
					<li class="active">Invoice history </li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-ckeckout-->
	<div class="ckeckout">
		<div class="container">
			<div class="ckeckout-top">
			<div class=" cart-items heading">
			 <h3>Invoice Purchased</h3>
				<script>$(document).ready(function (c) {
    $('.close1').on('click', function (c) {
        $('.cart-header').fadeOut('slow', function (c) {
            $('.cart-header').remove();
        });
    });
});
			   </script>
			<script>$(document).ready(function (c) {
    $('.close2').on('click', function (c) {
        $('.cart-header1').fadeOut('slow', function (c) {
            $('.cart-header1').remove();
        });
    });
});
			   </script>
			   <script>$(document).ready(function (c) {
    $('.close3').on('click', function (c) {
        $('.cart-header2').fadeOut('slow', function (c) {
            $('.cart-header2').remove();
        });
    });
});
			   </script>
				
			<div class="in-check" >
				<ul class="unit" style="padding-left: 93px">
					<li><span>Item</span></li>
					<li><span>Product Name</span></li>
                    <li><span>Amount</span></li>
					<li><span>Unit Price</span></li>
                    <li><span>Date of purchase</span></li>
					<div class="clearfix"> </div>
				</ul>
                <asp:Repeater ID="rptLSHoaDon" runat="server">
                    <ItemTemplate>
                         
				<ul class="cart-header">
					
						<li class="ring-in"><a href="single.html" >
                            <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' style="width: 180px;"/></a>
						</li>
						<li><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></li>
						<li><asp:Label ID="lblSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label></li>
                        <li><asp:Label ID="lblDonGia" runat="server" Text='<%# Eval("DonGia") + "$" %>'></asp:Label></li>
                        <li><asp:Label ID="lblNgayMua" runat="server" Text='<%# Eval("NgayMua") %>'></asp:Label></li>
					<div class="clearfix"> </div>
				</ul>
                       
                        </ItemTemplate>
                    </asp:Repeater>
                <p style="font-size:20px">Total: <asp:Label ID="lblTongTien" runat="server"  style="color:red" Text="0"></asp:Label> $
              
			</div>
			</div>  
		 </div>
		</div>
	</div>
        
	<!--end-ckeckout-->
</asp:Content>
