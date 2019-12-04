<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="GUI.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--banner-starts----------------------------------------------------------------------------------------->
	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
					<div class="banner-1"></div>
				</li>
				<li>
					<div class="banner-2"></div>
				</li>
				<li>
					<div class="banner-3"></div>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends-------------------------------------------------------------------------------------------> 
	<!--Slider-Starts-Here--------------------------------------------------------------------------------------------->
				<script src="js/responsiveslides.min.js"></script>
			 <script>
			     // You can also use "$(window).load(function() {"
			     $(function () {
			         // Slideshow 4
			         $("#slider4").responsiveSlides({
			             auto: true,
			             pager: true,
			             nav: false,
			             speed: 500,
			             namespace: "callbacks",
			             before: function () {
			                 $('.events').append("<li>before event fired.</li>");
			             },
			             after: function () {
			                 $('.events').append("<li>after event fired.</li>");
			             }
			         });

			     });
			  </script>
			<!--End-slider-script------------------------------------------------------------------------------------------->
	<!--start-banner-bottom-------------------------------------------------------------------------------------------> 
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-top">
				<div class="col-md-6 banner-bottom-left">
					<div class="bnr-one">
						<div class="bnr-left">
							<h1><a href="single.html">Duis dictum volutpat</a></h1>
							<p>Nulla tempus facilisis purus at.</p>
							<div class="b-btn"> 
                                <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl="~/SanPham.aspx">SHOP NOW</asp:HyperLink>
							</div>
						</div>
						<div class="bnr-right"> 
							<a href="single.html"><img src="images/b-1.jpg" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6 banner-bottom-right">
					<div class="bnr-two">
						<div class="bnr-left">
							<h2><a href="single.html">Phasellus quis nunc</a></h2>
							<p>Nulla tempus facilisis purus at.</p>
							<div class="b-btn"> 
								<asp:HyperLink ID="hplSanPham2" runat="server" NavigateUrl="~/SanPham.aspx" >SHOP NOW</asp:HyperLink>
							</div>
						</div>
						<div class="bnr-right"> 
							<a href="single.html"><img src="images/b-2.jpg" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-banner-bottom-------------------------------------------------------------------------------------------> 
	<!--start-shoes-------------------------------------------------------------------------------------------> 
	<div class="shoes"> 
		<div class="container"> 
			
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
						<p><asp:LinkButton ID="btnThemGH" runat="server" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class=" item_price"></i></asp:LinkButton>
                            <asp:Label ID="lblGiaTien" runat="server" class=" item_price" Text='<%# "$"+Eval("GiaTien") %>'></asp:Label>
						   </a></p>
					</div>
				</div>
                        </ItemTemplate>
                        </asp:Repeater>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-shoes------------------------------------------------------------------------------------------->
	<!--start-abt-shoe------------------------------------------------------------------------------------------->
	<div class="abt-shoe">
		<div class="container"> 
			<div class="abt-shoe-main">
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.html"><img src="images/abt-1.jpg" alt="" /></a>
						<h4><a href="single.html">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl. Aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.html"><img src="images/abt-2.jpg" alt="" /></a>
						<h4><a href="single.html">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl. Aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.html"><img src="images/abt-3.jpg" alt="" /></a>
						<h4><a href="single.html">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl. Aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</asp:Content>
