<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="GUI.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-breadcrumbs-->
     
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><asp:HyperLink ID="hplTrangChu" runat="server" NavigateUrl="~/TrangChu.aspx">Home</asp:HyperLink></li>
					<li class="active">Checkout</li>
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
			 <h3>My Shopping Bag</h3>
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
				<ul class="unit">
					<li><span>Item</span></li>
					<li><span>Product Name</span></li>		
					<li><span>Unit Price</span></li>
					<li><span>Size</span></li>
                    <li><span>Amount</span></li>
					<li> </li>
					<div class="clearfix"> </div>
				</ul>
                <asp:Repeater ID="rptGioHang" runat="server">
                    <ItemTemplate>
                         
				<ul class="cart-header">
					<div> <asp:LinkButton ID="btnXoaGH" runat="server" CssClass="btn" OnClick="btnXoaGH_Click" style="font-size: 45px;margin-left: -5px;margin-bottom: -123px;"><i class="fa fa-trash"></i></asp:LinkButton></div>
						<li class="ring-in"><a href="single.html" >
                            <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' style="width: 180px;margin-left: 60px;margin-top: -40px;"/></a>
						</li>
						<li><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></li>
						<li><asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+"$" %>'></asp:Label></li>
                        <li><asp:Label ID="lblSize" runat="server" Text='<%# Eval("sizenumber") %>'></asp:Label></li>
						<li><asp:Label ID="lblSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label></li>
                    
					<div class="clearfix"> </div>
				</ul>
                       
                        </ItemTemplate>
                    </asp:Repeater>
                <p style="font-size:20px">Total: <asp:Label ID="lblTongTien" runat="server"  style="color:red" Text="0"></asp:Label> $
                <asp:Button ID="btnThanhToan" runat="server" CssClass="btn btn-primary" style="float:right" Text="Pay now" onclick="btnThanhToan_Click"/></p>
			</div>
			</div>  
		 </div>
		</div>
	</div>
        
	<!--end-ckeckout-->
</asp:Content>
