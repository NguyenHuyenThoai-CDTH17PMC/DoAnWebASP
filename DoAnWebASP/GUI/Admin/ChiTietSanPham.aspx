<%@ Page Title="" Language="C#"  EnableEventValidation="false" MasterPageFile="~/Admin/Master.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="GUI.Admin.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <label>ID</label>
                                        <asp:TextBox ID="txtid" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                        <label>Mã SP</label>
                                        <asp:TextBox ID="txtmasp" runat="server" CssClass="form-control"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="color:#ff0000" ControlToValidate="txtmasp" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Số Lượng Tồn Kho</label>
                                        <asp:TextBox ID="txtsoluong" runat="server" CssClass="form-control" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:#ff0000" ControlToValidate="txtsoluong" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Size</label>
                                        <asp:TextBox ID="txtsize" runat="server" CssClass="form-control" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="color:#ff0000" ControlToValidate="txtsize" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                    </div>
                                    <asp:Button ID="btnThemMoi" runat="server" CssClass="btn btn-info width-md waves-effect waves-light" Text="Thêm Mới" OnClick="btnThemMoi_Click"/>
                                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-secondary waves-effect" Text="Cập Nhật" OnClick="btnCapNhat_Click"/>
                                    <asp:Button ID="btnXoa" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Xóa" OnClick="btnXoa_Click"/>
                                    <hr  width="30%" align="center" />
                                    <h4 class="header-title">Danh sách Chi Tiết</h4>
                                <table id="basic-datatable" class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Mã ID</th>
                                            <th scope="col">Mã SP</th>
                                            <th scope="col">Số Lượng Tồn Kho</th>
                                            <th scope="col">Size</th>
                                            <th scope="col">Cập Nhật</th>                     
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptChiTietSanPham" runat="server" OnItemCommand="btncapnhat">
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("masp_id") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="txtsoluongtonkho" runat="server" Text='<%# Eval("SoLuongTonKho") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="txtsize" runat="server"  Text='<%# Eval("Sizenumber") %>'></asp:Label>
                                            </td>
                                            <td>
                                               <asp:Button ID="btnChon" runat="server" CssClass="btn btn-info waves-effect waves-light" CausesValidation="False" CommandName="ChonTK" Text="Chọn" CommandArgument='<%# Eval("id") %>'/>
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
