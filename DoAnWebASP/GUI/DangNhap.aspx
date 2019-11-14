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
				
				<div class="col-md-8 account-left">
					<form>
					<div class="account-top heading">
						<h3>LOGIN ACCOUNT</h3>
					</div>
					<div class="address">
						<span>Email Address</span>
						<input type="text">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="text">
					</div>
					<div class="address">
						<a class="forgot" href="#">Forgot Your Password?</a>
						<input type="submit" value="Login">
					</div>
				</div>
				</form>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->

</asp:Content>
