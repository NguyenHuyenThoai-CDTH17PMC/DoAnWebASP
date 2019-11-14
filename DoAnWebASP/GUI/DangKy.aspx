<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="GUI.DangKy" %>
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
						<h3>NEW CUSTOMERS</h3>
					</div>
					<div class="address">
						<span>First Name</span>
						<input type="text">
					</div>
					<div class="address">
						<span>Last Name</span>
						<input type="text">
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
						<span>Reenter Password</span>
						<input type="text">
					</div>
					<div class="address new">
						<input type="submit" value="submit">
					</div>
					</form>
				</div>
				
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->
</asp:Content>
