<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Admin/Master.Master" AutoEventWireup="true" CodeBehind="DanhSachSP.aspx.cs" Inherits="GUI.Admin.Themsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                   <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <label>Mã SP</label>
                                        <asp:TextBox ID="txtmasp" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:#ff0000" ControlToValidate="txtmasp" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label>Tên Sản Phẩm</label>
                                        <asp:TextBox ID="txtTenSP" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="color:#ff0000" ControlToValidate="txtTenSP" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Thông Tin SP</label>
                                        <asp:TextBox ID="txtThongTin" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="color:#ff0000" ControlToValidate="txtThongTin" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Giá Tiền</label>
                                        <asp:TextBox ID="txtGiaTien" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="color:#ff0000" ControlToValidate="txtGiaTien" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <label for="">Mã Loại SP</label>
                                        <asp:DropDownList ID="ddlSanPham" runat="server" CssClass="form-control" AutoPostBack="false">  
                                        </asp:DropDownList>
                                        <label for="">Hình Sản Phẩm</label>
                                        <asp:Image ID="imgAnhMinhHoa" Width="150px" runat="server" /><br>
                                        <label for="">Upload Ảnh mới</label>
                                        <asp:FileUpload ID="imgHinhSanPham" runat="server" CssClass="form-control"/>
                                    </div>
                                     <asp:Button ID="btnThemMoi" runat="server" CssClass="btn btn-info width-md waves-effect waves-light" Text="Thêm Mới" OnClick="btnThemMoi_Click"/>
                                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-secondary waves-effect" Text="Cập Nhật" OnClick="btnCapNhat_Click"/>
                                    <asp:Button ID="btnXoa" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Xóa" OnClick="btnXoa_Click"/>
                                  <hr width="30%" align="center" />
                                <h4 class="header-title">Danh sách sản phẩm</h4>
                                <table id="basic-datatable" class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr> 
                                            <th scope="col">Mã SP</th>
                                            <th scope="col">Tên Sản Phẩm</th>
                                            <th scope="col">Thông Tin</th>
                                            <th scope="col">Giá Tiền</th>    
                                            <th scope="col">Mã Loại</th>
                                            <th scope="col">Hình Ảnh</th>
                                            <th scope="col">Trạng Thái</th>
                                            <th scope="col">Chi tiết sản phẩm</th>
                                            <th scope="col"> Cập Nhật</th>                   
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <asp:Repeater ID="rptSanPham" runat="server" OnItemCommand="btncapnhat">
                                        <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblMasp" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
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
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MaLoaiSP") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Image ID="imgAnhMinhHoa" Width="100px" runat="server" ImageUrl='<%# "../images/" + Eval("AnhMinhHoa") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                                            </td>
                                            <td>
                                                 <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#"ChiTietSanPham.aspx?ID="+Eval("MaSP")%>'><button class="btn btn-info width-md waves-effect waves-light" type="button"><i class="fas fa-arrow-right"></i></></asp:HyperLink>
                                            </td>
                                            <td>
                                                 <asp:Button ID="btnChon" runat="server" CssClass="btn btn-info waves-effect waves-light" CausesValidation="False" CommandName="ChonTK" Text="Chọn" CommandArgument='<%# Eval("MaSP") %>'/>
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
