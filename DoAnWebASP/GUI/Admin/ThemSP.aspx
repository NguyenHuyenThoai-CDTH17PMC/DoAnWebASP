<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="GUI.Admin.ThemSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mb-3 header-title">Thêm Người Chơi</h4>
                               	<form ID="form2" runat="server">
                                    <div class="form-group">
                                        <label>Tên Sản Phẩm</label>
                                        <asp:TextBox ID="txtTenSP" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="">Thông Tin SP</label>
                                        <asp:TextBox ID="txtThongTin" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="">Giá Tiền</label>
                                        <asp:TextBox ID="txtGiaTien" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="">Mã Loại SP</label>
                                        <asp:DropDownList ID="ddlSanPham" runat="server" CssClass="form-control" AutoPostBack="false">  
                                        </asp:DropDownList>
                                        <label for="">Hình Sản Phẩm</label>
                                        <asp:FileUpload ID="imgHinhSanPham" runat="server" CssClass="form-control"/>
                                        <label for="email">Số Lượng Tồn Kho</label>
                                        <asp:TextBox ID="txtSLTonKho" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                     <asp:Button ID="btnThemMoi" runat="server" Text="Thêm Mới" OnClick="btnThemMoi_Click1" />
                              </form>
                            </div>
                        </div>
                    </div>
</asp:Content>
