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
					
					<div class="account-top heading">
						<h3>NEW CUSTOMERS</h3>
					</div>
					<div class="address">
						<span>Account name</span>
						 <asp:TextBox ID="txtTenTK" runat="server" CssClass="textbox" placeholder="6-15 kí tự, gồm chữ cái, chữ số, dấu gạch dưới"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenTK" runat="server" style="color:#ff0000" ControlToValidate="txtTenTK" ErrorMessage="Chưa nhập tên tài khoản" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgeTenTk" runat="server" style="color:#ff0000"  ControlToValidate="txtTenTK" ErrorMessage="Tên tài khoản sai định dạng" Display="Dynamic" ValidationExpression="\w{6,15}"></asp:RegularExpressionValidator>
					</div>
					<div class="address">
						<span>Password</span>
						 <asp:TextBox ID="txtMK" runat="server" TextMode="Password" style="border: 1px solid #242424;outline: none;width: 100%;font-size: 14px;padding: 10px 10px;font-family: 'Lato', sans-serif;" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMK" runat="server"  style="color:#ff0000" ControlToValidate="txtMK" ErrorMessage="Chưa nhập mật khẩu" Display="Dynamic"></asp:RequiredFieldValidator>
					</div>
					<div class="address">
						<span>Reenter Password</span>
						 <asp:TextBox ID="txtNLMK" runat="server" TextMode="Password" style="border: 1px solid #242424;outline: none;width: 100%;font-size: 14px;padding: 10px 10px;font-family: 'Lato', sans-serif;" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvNLMK" runat="server"  style="color:#ff0000" ControlToValidate="txtNLMK" ErrorMessage="Chưa nhập lại mật khẩu" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cpvMK" runat="server"  style="color:#ff0000" ControlToValidate="txtNLMK" ControlToCompare="txtMK" ErrorMessage="Chưa đúng mật khẩu" Display="Dynamic"></asp:CompareValidator>
					</div>
					<div class="address">
						<span>Email</span>
						<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" style="color:#ff0000" ControlToValidate="txtEmail" ErrorMessage="Chưa nhập Email" Display="Dynamic"></asp:RequiredFieldValidator>
					</div>
					<div class="address">
						<span>Phone Number</span>
						<asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSDT" runat="server"  style="color:#ff0000" ControlToValidate="txtSDT" ErrorMessage="Chưa nhập SDT" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgeSDT" runat="server"  style="color:#ff0000" ControlToValidate="txtSDT" ErrorMessage="SĐT không hợp lệ" Display="Dynamic" ValidationExpression="0\d{9}"></asp:RegularExpressionValidator>
					</div>
                    <div class="address">
						<span>Address</span>
						<asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" style="color:#ff0000" ControlToValidate="txtDiaChi" ErrorMessage="Chưa nhập địa chỉ" Display="Dynamic" ></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="ctvDiaChi" runat="server"  style="color:#ff0000" ControlToValidate="txtDiaChi"  ErrorMessage="Địa chỉ phải ở TPHCM"></asp:CustomValidator>
					</div>
                    <div class="address">
						<span>Full name</span>
						<asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvHoTen" runat="server"  style="color:#ff0000" ControlToValidate="txtHoTen" ErrorMessage="Chưa nhập họ tên" Display="Dynamic" ></asp:RequiredFieldValidator>
					</div>
					<div class="address new">
                        <asp:Button ID="btnDangKi" runat="server" onclick="btnDangKi_Click" Text="Registration" />
					</div>
					
				</div>
				
		</div>
	</div>
	<!------------------------------------------------------------------------------------------end-account-->
</asp:Content>
