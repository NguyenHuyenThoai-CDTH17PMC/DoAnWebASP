<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="GUI.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><asp:HyperLink ID="hblTrangChu" runat="server" NavigateUrl="~/TrangChu.aspx">Home</asp:HyperLink></li>
					<li class="active">New Products</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-product--> 
	<div class="product">
		<div class="container">
			<div class="product-main">
                
				<div class="col-md-9 p-left">
                
				<div class="product-one">
                    <asp:Repeater ID="rptSanPham" runat="server" OnItemCommand="rptSanPham_ItemCommand">
                    <ItemTemplate>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<asp:HyperLink ID="hplXemChiTiet" runat="server" NavigateUrl='<%#"ChiTietSanPham.aspx?qqq="+Eval("MaSP")%>' >
								 <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</asp:HyperLink>
						<h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						<p> <asp:Label ID="lblGiaTien"  runat="server" class=" item_price" Text='<%# "$"+Eval("GiaTien") %>'></asp:Label>
						   </p>
					</div>
				</div>
                        </ItemTemplate>
                        </asp:Repeater>
				<div class="clearfix"> </div>
			</div>
                        
                   
			</div>
        
			<div class="col-md-3 p-right single-right">
				<h3>SPECIES</h3>
				<ul class="product-categories">
                         <asp:Repeater ID="rpt_LoaiGiay" runat="server" OnItemCommand="rpt_LoaiGiay_ItemCommand">
                             <ItemTemplate>
						        <li><asp:LinkButton ID="btnXemLoaiGiay"  CommandName="XemGiayTheoTenLoai" CommandArgument='<%# Eval("TenLoaiSP") %>' runat="server" Text='<%# Eval("TenLoaiSP") %>' ></asp:LinkButton></li>
                              </ItemTemplate>                   				
                        </asp:Repeater>
					</ul>    
					<h3>Sizes</h3>
						<ul class="product-categories">
						<asp:Repeater ID="rpt_SizeGiay" runat="server" OnItemCommand="rpt_SizeGiay_ItemCommand">
                             <ItemTemplate>
						        <li><asp:LinkButton ID="btnXemLoaiGiay" CommandName="XemGiayTheoSize" CommandArgument='<%# Eval("sizenumber") %>' runat="server" Text='<%# Eval("sizenumber") %>'></asp:LinkButton></li> 
                              </ItemTemplate>                   				
                        </asp:Repeater>
					</ul>
					<h3>Price</h3>
					<ul class="product-categories p1">
						<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="SanPham.aspx?Sort=LOW_TO_HIGH">LOW TO HIGH PRICES</asp:HyperLink> </li>
                        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="SanPham.aspx?Sort=HIGH_TO_LOW">HIGH TO LOW PRICES</asp:HyperLink> </li> 
					</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>
	<!--end-product-->
</asp:Content>
