using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI.Admin
{
    public partial class DanhSachLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
            }
        }
        public void load()
        {
            rptSanPham.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
            rptSanPham.DataBind();
        }
        protected void btncapnhat(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string ID = e.CommandArgument.ToString();
                LoaiSanPhamDTO lsp = LoaiSanPhamBUS.LayDSLoaiSanPhamID(ID);
                txtid.Text = lsp.MaLoaiSP;
                txttenloai.Text = lsp.TenLoaiSP;
                txtid.Enabled = false;
            }
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            LoaiSanPhamDTO lsp = new LoaiSanPhamDTO();
            lsp.TenLoaiSP = txttenloai.Text;
            if (LoaiSanPhamBUS.ThemLoaiSp(lsp))
            {
                load();
                Response.Write("<script>alert('Thêm mới loại sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm mới loại sản phẩm thất bại!')</script>");
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            LoaiSanPhamDTO lsp = LoaiSanPhamBUS.LayDSLoaiSanPhamID(txtid.Text);
            lsp.TenLoaiSP = txttenloai.Text;
            if (LoaiSanPhamBUS.CapNhatLSP(lsp,txtid.Text))
            {
                load();
                Response.Write("<script>alert('Cập nhật loại sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cập nhật loại phẩm thất bại!')</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (LoaiSanPhamBUS.XoaLSP(txtid.Text))
            {
                load();
                Response.Write("<script>alert('Xóa loại sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Xóa loại sản phẩm thất bại!')</script>");
            }
        }
    }
}