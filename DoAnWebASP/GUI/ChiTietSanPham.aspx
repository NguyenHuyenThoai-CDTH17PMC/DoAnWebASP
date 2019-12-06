<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="GUI.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
									<asp:Image ID="imgAnhMinhHoa" runat="server"  />
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
							<span class="actual item_price"> <asp:Label ID="lblGia" runat="server" ></asp:Label></span><a href="#">click for offer</a>
						</div>
						<h2 class="quick">Quick Overview:</h2>
						<p class="quick_desc"><asp:Label ID="lblThongTin" runat="server" ></asp:Label></p>
                        <p class="quick_desc">Số lượng</p>			 
                        <p class="quick_desc"><asp:TextBox ID="txtSoluong" runat="server" TextMode="Number" Text="1"  /></p>
                        <p class="quick_desc">Số lượng tồn kho còn:</p>	
                        <p class="quick_desc"><asp:TextBox ID="txtSLTK" runat="server" TextMode="Number" Text="1"  /></p>	
						<p class="quick_desc">Chọn size:</p>	
                        <p class="quick_desc"> <asp:DropDownList ID="DropDownList_size" runat="server"></asp:DropDownList></p>
					<div class="clearfix"> </div>
				<div class="single-but item_add">
					<asp:LinkButton ID="btnADD" runat="server"  OnClick="btnADD_Click" Text="ADD to cart"></asp:LinkButton>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
					<div class="latest products">
						<div class="product-one">
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									
									<a href="#">
								<img src="images/shoes-1.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
									
								</div>
							</div>
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-2.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
									
								</div>
							</div>
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-3.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>									
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="product-one">
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-13.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>									
								</div>
							</div>
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-5.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>									
								</div>
							</div>
							<div class="col-md-4 product-left single-left"> 
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-6.png" alt="" />
								<div class="mask mask1">
									<span>Quick View</span>
								</div>
								</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>				
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 single-right">
					<h3>Loại Giày</h3>
                  
					<ul class="product-categories">
                         <asp:Repeater ID="rpt_LoaiGiay" runat="server" OnItemCommand="rpt_LoaiGiay_ItemCommand">
                             <ItemTemplate>
						        <li><asp:LinkButton ID="btnXemLoaiGiay" CommandName="XemLoaiGiay" CommandArgument='<%# Eval("TenLoaiSP") %>' runat="server" Text='<%# Eval("TenLoaiSP") %>'></asp:LinkButton></li> 
                              </ItemTemplate>                   				
                        </asp:Repeater>
					</ul>           
					<h3>Size GIày</h3>
					<ul class="product-categories">
						<asp:Repeater ID="rpt_SizeGiay" runat="server" OnItemCommand="rpt_SizeGiay_ItemCommand">
                             <ItemTemplate>
						        <li><asp:LinkButton ID="btnXemLoaiGiay" CommandName="XemLoaiGiay" CommandArgument='<%# Eval("sizenumber") %>' runat="server" Text='<%# Eval("sizenumber") %>'></asp:LinkButton></li> 
                              </ItemTemplate>                   				
                        </asp:Repeater>
					</ul>
					<h3>Price</h3>
					<ul class="product-categories p1">
						<li><a href="#">600$-700$</a> <span class="count">(14)</span></li>
						<li><a href="#">700$-800$</a> <span class="count">(2)</span></li>
						<li><a href="#">800$-900$</a> <span class="count">(2)</span></li>
						<li><a href="#">900$-1000$</a> <span class="count">(8)</span></li>
						<li><a href="#">1000$-1100$</a> <span class="count">(11)</span></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-single-->
</asp:Content>
