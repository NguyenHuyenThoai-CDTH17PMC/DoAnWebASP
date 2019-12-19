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
    public partial class Themsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
                ddlSanPham.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
                ddlSanPham.DataTextField = "TenLoaiSP";
                ddlSanPham.DataValueField = "MaLoaiSP";
                ddlSanPham.DataBind();            
            }
        }
        public void load()
        {
            rptSanPham.DataSource = SanPhamBUS.LayDSSanPham();
            rptSanPham.DataBind();
        }
        protected void btncapnhat(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string ID = e.CommandArgument.ToString();
                SanPhamDTO sp = SanPhamBUS.LayDSSanPhamCapNhat(ID);
                txtmasp.Text = sp.MaSP;
                txtTenSP.Text = sp.TenSP;
                txtThongTin.Text = sp.ThongTin;
                txtGiaTien.Text = Convert.ToString(sp.GiaTien);
                imgAnhMinhHoa.ImageUrl = "../images/" + sp.AnhMinhHoa;
            }
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            string sTenfile;
            sTenfile = imgHinhSanPham.FileName;
            imgHinhSanPham.SaveAs(MapPath("../images/" + sTenfile));
            SanPhamDTO sp = new SanPhamDTO();
            sp.MaSP = txtmasp.Text;
            sp.TenSP = txtTenSP.Text;
            sp.ThongTin = txtThongTin.Text;
            sp.GiaTien = Convert.ToInt32(txtGiaTien.Text);
            sp.MaLoaiSp = ddlSanPham.SelectedValue.ToString();
            sp.AnhMinhHoa = sTenfile.ToString();
            if (SanPhamBUS.ThemSP(sp))
            {
                load();
                Response.Write("<script>alert('Thêm mới sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm mới sản phẩm thất bại!')</script>");
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            SanPhamDTO sp = SanPhamBUS.LayDSSanPhamCapNhat(txtmasp.Text);
            SanPhamDTO sp2 = SanPhamBUS.LayDSSanPhamCapNhat(txtmasp.Text);
            sp.TenSP = txtTenSP.Text;
            sp.ThongTin = txtThongTin.Text;
            sp.GiaTien = Convert.ToInt32(txtGiaTien.Text);
            sp.MaLoaiSp = ddlSanPham.SelectedValue.ToString();
            if (imgHinhSanPham.HasFile)
            {
                string sTenfile;
                sTenfile = imgHinhSanPham.FileName;
                imgHinhSanPham.SaveAs(MapPath("../images/" + sTenfile));
                sp.AnhMinhHoa = sTenfile.ToString();
            }
            else
            {
                sp2.AnhMinhHoa = sp.AnhMinhHoa;
            }
            if (SanPhamBUS.CapNhatSP(sp,txtmasp.Text))
            {
                load();
                Response.Write("<script>alert('Cập nhật sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cập nhật sản phẩm thất bại!')</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (SanPhamBUS.XoaSP(txtmasp.Text))
            {
                load();
                Response.Write("<script>alert('Xóa sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Xóa sản phẩm thất bại!')</script>");
            }
        }
    }
}