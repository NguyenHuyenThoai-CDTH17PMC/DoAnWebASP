<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GUI.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>Profile</h1></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
      <div class="text-center">
        <asp:Image ID="imgAnhMinhHoa" runat="server" CssClass="img-circle img-responsive" /><br/>
        <h6>Upload a different photo...</h6>
        <asp:FileUpload ID="imgHinhSanPham" runat="server" CssClass="text-center center-block file-upload"/>
      </div></hr><br>
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
              </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                       <div class="form-group">
                                        <label>Tên Tài Khoản</label>
                                        <asp:TextBox ID="txtTenTK" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:#ff0000" ControlToValidate="txtTenTK" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label>Mật Khẩu</label>
                                        <asp:TextBox ID="txtMK" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="color:#ff0000" ControlToValidate="txtMK" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="color:#ff0000" ControlToValidate="txtEmail" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">SĐT</label>
                                        <asp:TextBox ID="txtSDT" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="color:#ff0000" ControlToValidate="txtSDT" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Địa chỉ</label>
                                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="color:#ff0000" ControlToValidate="txtDiaChi" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Họ Tên Đầy Đủ</label>
                                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox><br>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" style="color:#ff0000" ControlToValidate="txtHoTen" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />                          
                                    </div>
                                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-secondary waves-effect" Text="Cập Nhật" OnClick="btnCapNhat_Click"/>
        </div><!--/col-9-->
    </div><!--/row-->
        </div>
        </div>
    </div>
</asp:Content>