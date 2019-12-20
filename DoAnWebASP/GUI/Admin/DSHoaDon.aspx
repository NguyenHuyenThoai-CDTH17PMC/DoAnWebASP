<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Master.Master" AutoEventWireup="true" CodeBehind="DSHoaDon.aspx.cs" Inherits="GUI.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ConfirmItem() {
            if (confirm("Bạn có chắc xử lý đơn hàng này không?")) {
                return true;
            }
            return false;
        }
    </script>

    <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                  <hr width="30%" align="center"/>
                                <h4 class="header-title">Danh sách sản phẩm</h4>
                                <table id="basic-datatable" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">Mã hóa đơn</th>
                                            <th scope="col">Tên Tài Khoản</th>
                                            <th scope="col">Ngày mua</th>
                                            <th scope="col">Địa chỉ giao hàng</th>
                                            <th scope="col">Số điện thoại</th>
                                            <th scope="col">Tổng tiền</th>
                                            <th scope="col">Trạng Thái</th>
                                            <th scope="col"> Cập Nhật</th>                   
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptHoaDon" runat="server" OnItemCommand="rptHoaDon_ItemCommand" >
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblMaHD" runat="server" Text='<%# Eval("MaHD") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTenTK" runat="server" Text='<%# Eval("TenTaiKhoan") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblNgayMua" runat="server" Text='<%# Eval("NgayMua") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDiaChi" runat="server" Text='<%# Eval("DiaChiGiaoHang") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblSDT" runat="server" Text='<%# Eval("SDTGiaoHang") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTongTien" runat="server" Text='<%# Eval("TongTien") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTrangThai" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                                            </td>
                                            <td>
                                                 <asp:Button ID="btnChon" runat="server" CssClass="btn btn-info waves-effect waves-light" CausesValidation="False" CommandName="ChonHD" Text="Xử lý đơn hàng" CommandArgument='<%# Eval("MaHD") %>' OnClientClick="return ConfirmItem()" />
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
