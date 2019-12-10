<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="DanhSachLoaiSP.aspx.cs" Inherits="GUI.Admin.DanhSachLoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Danh sách sản phẩm</h4>
                                <a href=""><button class="btn btn-primary waves-effect waves-light" type="button">Thêm mới</button></a>
                                <a href=""><button class="btn btn-primary waves-effect waves-light" type="button">Thùng rác</button></a>
                                <table id="basic-datatable" class="table dt-responsive nowrap">
                                    <thead>
                                        <tr>
                                            <th>Mã Loại</th>
                                            <th>Tên Loại Sản Phẩm</th>
                                            <th>Trạng Thái</th>
                                            <th> Cập Nhật | Xóa </th>                        
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptSanPham" runat="server">
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
                                                 <a href=""><button class="btn btn-purple waves-effect waves-light" type="button"><i class=" mdi mdi-pencil-outline"></i></button></a>
                                                 <a href=""><button class="btn btn-danger waves-effect waves-light" type="button"><i class=" mdi mdi-close"></i></button></a>  
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
