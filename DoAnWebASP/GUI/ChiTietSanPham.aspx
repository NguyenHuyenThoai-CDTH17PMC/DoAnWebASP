<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="GUI.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
									<asp:Image ID="imgAnhMinhHoa"  runat="server" style="height:320px" />
                        </div>
							
<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

	<script>
	    // Can also be used with $(document).ready()
	    $(window).load(function () {
	        $('.flexslider').flexslider({
	            animation: "slide",
	            controlNav: "thumbnails"
	        });
	    });
</script>
				</div>	
				<div class="col-md-7 single-top-right">
					<div class="details-left-info simpleCart_shelfItem">
                         <h3><asp:Label ID="lblMaSP" runat="server" ></asp:Label></h3>
						    <h3><asp:Label ID="lblTenSP" runat="server" ></asp:Label></h3>
						<p class="availability">Availability: <span class="color">In stock</span></p>
						<div class="price_single">
							<span class="reducedfrom">$800.00</span>
							<span class="actual item_price">$<asp:Label ID="lblGia" runat="server" ></asp:Label></span>
						</div>
						<h2 class="quick">Quick Overview:</h2>
						<p class="quick_desc"><asp:Label ID="lblThongTin" runat="server" ></asp:Label></p>		 
                        <p class="quick_desc" style="color: #666;">Amount: <asp:TextBox ID="txtSoluong" runat="server" TextMode="Number" min="1" Text="1" style="width:45px" /></p>
                        <p class="quick_desc" style="color: #666;">Residual amount: <asp:Label ID="lblSLTK" runat="server" ></asp:Label></p>		
                        <p class="quick_desc" style="color: #666;">Size: <asp:DropDownList ID="DropDownList_size"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList_size_SelectedIndexChanged" runat="server" ></asp:DropDownList></p>
					<div class="clearfix"> </div>
				<div class="single-but item_add">
                    <asp:Button ID="btnADD" runat="server" OnClick="btnADD_Click" Text="Add to card" />
					
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
                <div class="col-md-3 single-right">
					<h3>Species</h3>
					<ul class="product-categories">
                         <asp:Repeater ID="rpt_LoaiGiay" runat="server" OnItemCommand="rpt_LoaiGiay_ItemCommand">
                             <ItemTemplate>
						        <li><asp:LinkButton ID="btnXemLoaiGiay"  CommandName="XemGiayTheoTenLoai" CommandArgument='<%# Eval("TenLoaiSP") %>' runat="server" Text='<%# Eval("TenLoaiSP") %>' ></asp:LinkButton></li>
                              </ItemTemplate>                   				
                        </asp:Repeater>
					</ul>           
					<h3>Size</h3>
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
					<div class="latest products">	
						<div class="product-one">
                            <asp:Repeater ID="rpt_spcungloai" runat="server">
                                <ItemTemplate>
                                  	<div class="col-md-4 product-left single-left"> 
					                    <div class="p-one simpleCart_shelfItem" style="padding: 1px">
						                    <asp:HyperLink ID="hplXemChiTiet" runat="server" NavigateUrl='<%#"ChiTietSanPham.aspx?qqq="+Eval("MaSP")%>' >
								                     <asp:Image ID="imgAnhMinhHoa"  runat="server"  ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
								                    <div class="mask mask1">
									                    <span>Quick View</span>
								                    </div>
							                    </asp:HyperLink>
						                    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						                    <p><asp:Label ID="lblGiaTien" runat="server" class=" item_price" Text='<%# "$"+Eval("GiaTien") %>'></asp:Label>
						                       </a></p>
					                    </div>
				                    </div>
                                    
                                </ItemTemplate>
                            </asp:Repeater>
							
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	<!--end-single-->
</asp:Content>
