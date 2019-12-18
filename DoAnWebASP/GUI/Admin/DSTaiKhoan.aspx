<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Admin/Master.Master" AutoEventWireup="true" CodeBehind="DSTaiKhoan.aspx.cs" Inherits="GUI.Admin.DSTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                   <div class="col-12">
                        <div class="card">
                            <div class="card-body">
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
                                        <label for="">Trạng Thái Admin</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                            <asp:ListItem>True</asp:ListItem>
                                            <asp:ListItem>False</asp:ListItem>
                                        </asp:DropDownList><br />
                                         <label for="">Hình Đại Diện</label>
                                        <asp:Image ID="imgAnhMinhHoa" Width="100px" runat="server" /><br/>
                                        <label for="">Chọn Hình Đại Diện</label>
                                        <asp:FileUpload ID="imgHinhSanPham" runat="server" CssClass="form-control"/>
                                    </div>
                                     <asp:Button ID="btnThemMoi" runat="server" CssClass="btn btn-info width-md waves-effect waves-light" Text="Thêm Mới" OnClick="btnThemMoi_Click"/>
                                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-secondary waves-effect" Text="Cập Nhật" OnClick="btnCapNhat_Click"/>
                                    <asp:Button ID="btnXoa" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Xóa" OnClick="btnXoa_Click"/>
                                  <hr width="50%" align="center" />
                                <h4 class="header-title">Danh sách tài khoản</h4>
                                 <label for="">Loại Tài Khoản</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="tatca">Tất Cả Tài Khoản</asp:ListItem>
                                    <asp:ListItem Value="1">Tài Khoản Admin</asp:ListItem>
                                    <asp:ListItem Value="0">Tài Khoản Khách Hàng</asp:ListItem>
                                    </asp:DropDownList>
                                 <hr width="50%" align="center" />
                                <table id="basic-datatable" class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr> 
                                            <th scope="col">Tên Tài Khoản</th>
                                            <th scope="col">Mật Khẩu</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">SĐT</th>    
                                            <th scope="col">Địa chỉ</th>
                                            <th scope="col">Họ Tên Đầy Đủ</th>
                                            <th scope="col">Trạng Thái</th>
                                            <th scope="col">Trạng Thái Admin</th>
                                            <th scope="col">Ảnh Đại Diện</th>
                                            <th scope="col">Chọn</th>                     
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rpttaikhoan" runat="server" OnItemCommand="rpttaikhoan_ItemCommand">
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblMasp" runat="server" Text='<%# Eval("TenTaiKhoan") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTensp" runat="server" Text="?"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Sdt") %>'></asp:Label>
                                            </td>
                                          
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("DiaChi") %>'></asp:Label>
                                            </td>
                                             <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("HoTen") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                                            </td>
                                             <td>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("LaAdmin") %>'></asp:Label>
                                            </td>
                                             <td>
                                                <asp:Image ID="imgAnhMinhHoa" Width="100px" runat="server" ImageUrl='<%# "../images/" + Eval("AnhDaiDien") %>' />
                                            </td>
                                           
                                            <td>
                                                 <asp:Button ID="btnChon" runat="server" CssClass="btn btn-info waves-effect waves-light" CausesValidation="False" CommandName="ChonTK" Text="Chọn" CommandArgument='<%# Eval("TenTaiKhoan") %>'/>
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
