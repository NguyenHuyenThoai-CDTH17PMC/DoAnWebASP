<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GUI.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-breadcrumbs-->

	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><asp:HyperLink ID="hblTrangChu" runat="server" NavigateUrl="~/TrangChu.aspx">Home</asp:HyperLink></li>
					<li class="active">Account</li>
				</ol>
			</div>
		</div>
	</div>
    <script type="text/javascript">

        function clickButton(e, buttonid) {
            var evt = e ? e : window.event;
            var bt = document.getElementById(buttonid);

            if (bt) {
                if (evt.keyCode == 13) {
                    bt.click();
                    return false;
                }
            }
        }
    </script>
	<!--end-breadcrumbs-->
	<!------------------------------------------------------------------------------------------start-account-------->
	<div class="account">
		<div class="container"> 
			<div class="account-bottom">
				
				<div class="col-md-6 account-left">
					
					<div class="account-top heading">
						<h3>LOGIN ACCOUNT</h3>
					</div>
					<div class="address">
						<span>Account name</span>
                        <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
					</div>
					<div class="address">
						<span>Password</span>
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password" style="border: 1px solid #242424;outline: none;width: 100%;font-size: 14px;padding: 10px 10px;font-family: 'Lato', sans-serif;"></asp:TextBox>
					</div>
					<div class="address">
						<a class="forgot" href="#">Forgot Your Password?</a>
                        <asp:Button ID="btnDangNhap" runat="server"  Text="Login"  OnClick="btnDangNhap_Click" />
					</div>
                       
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->

</asp:Content>
