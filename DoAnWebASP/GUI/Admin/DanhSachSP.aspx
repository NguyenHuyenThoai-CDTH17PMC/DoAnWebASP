<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="DanhSachSP.aspx.cs" Inherits="GUI.Admin.Themsp" %>
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
                                            <th>Mã SP</th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Thông Tin</th>
                                            <th>Giá Tiền</th>    
                                            <th>Số Lượng Tồn Kho</th>    
                                            <th>Mã Loại</th>
                                            <th>Hình Ảnh</th>
                                            <th>Trạng Thái</th>
                                            <th> Cập Nhật | Xóa </th>                        
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptSanPham" runat="server">
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblMasp" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTensp" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ThongTin") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("SoLuongTonKho") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MaLoaiSP") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Image ID="imgAnhMinhHoa" Width="100px" runat="server" ImageUrl='<%# "../images/" + Eval("AnhMinhHoa") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='~/Admin/ThemSP.aspx?id='<%# Eval("ID") %>''>HyperLink</asp:HyperLink>
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
