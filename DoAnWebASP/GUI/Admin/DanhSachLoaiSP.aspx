<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin/Master.Master" AutoEventWireup="true" CodeBehind="DanhSachLoaiSP.aspx.cs" Inherits="GUI.Admin.DanhSachLoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <label>Mã SP</label>
                                        <asp:TextBox ID="txtid" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label>Tên Loại Sản Phẩm</label>
                                        <asp:TextBox ID="txttenloai" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:#ff0000" ControlToValidate="txttenloai" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                    </div>
                                    <asp:Button ID="btnThemMoi" runat="server" CssClass="btn btn-info width-md waves-effect waves-light" Text="Thêm Mới" OnClick="btnThemMoi_Click"/>
                                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-secondary waves-effect" Text="Cập Nhật" OnClick="btnCapNhat_Click"/>
                                    <asp:Button ID="btnXoa" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Xóa" OnClick="btnXoa_Click"/>
                                  <hr width="30%" align="center"/>
                                <h4 class="header-title">Danh sách sản phẩm</h4>
                                <table id="basic-datatable" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">Mã Loại</th>
                                            <th scope="col">Tên Loại Sản Phẩm</th>
                                            <th scope="col">Trạng Thái</th>
                                            <th scope="col"> Cập Nhật</th>                   
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptSanPham" runat="server" OnItemCommand="btncapnhat">
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblMasp" runat="server" Text='<%# Eval("MaLoaiSP") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTensp" runat="server" Text='<%# Eval("TenLoaiSP") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                                            </td>
                                            <td>
                                                 <asp:Button ID="btnChon" runat="server" CssClass="btn btn-info waves-effect waves-light" CausesValidation="False" CommandName="ChonTK" Text="Chọn" CommandArgument='<%# Eval("MaLoaiSP") %>'/>
                                            </td>
                                        </tr>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                    </tbody>
                                </table>
                            </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
</asp:Content>
