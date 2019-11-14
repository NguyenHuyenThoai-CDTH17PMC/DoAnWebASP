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
				<div class="col-md-6 account-left">
					<form id="form1" runat="server">
					<div class="account-top heading">
						<h3>NEW CUSTOMERS</h3>
					</div>
					<div class="address">
						<span>Account name</span>
						 <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
					</div>
					<div class="address">
						<span>Password</span>
						 <asp:TextBox ID="txtMK" runat="server" ></asp:TextBox>
					</div>
					<div class="address">
						<span>Reenter Password</span>
						 <asp:TextBox ID="txtNLMK" runat="server" ></asp:TextBox>
					</div>
					<div class="address">
						<span>Email</span>
						<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
					</div>
					<div class="address">
						<span>Phone Number</span>
						<asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
					</div>
                    <div class="address">
						<span>Address</span>
						<asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
					</div>
                    <div class="address">
						<span>Full name</span>
						<asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
					</div>
					<div class="address new">
                        <asp:Button ID="btnDangKi" runat="server" Text="Registration" />
					</div>
					</form>
				</div>
				
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->
</asp:Content>
