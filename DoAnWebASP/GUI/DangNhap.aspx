<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GUI.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Account</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!------------------------------------------------------------------------------------------start-account-------->
	<div class="account">
		<div class="container"> 
			<div class="account-bottom">
				
				<div class="col-md-6 account-left">
					<form id="form1" runat="server">
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
                        <asp:Button ID="btnDangNhap" runat="server" Text="Login" />
					</div>
				</div>
				</form>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->

</asp:Content>
