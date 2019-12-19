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
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        public string idt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptChiTietSanPham.DataSource = SanPhamBUS.LayDSChiTietSanPham(Request.QueryString["ID"]);
                rptChiTietSanPham.DataBind();
                txtid.ReadOnly = true;
                string masp = Request.QueryString["ID"];
                if(masp != null)
                {
                    txtmasp.Text = masp;
                }
                else
                {
                    txtmasp = null;
                }
            }
        }
        protected void btncapnhat(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string ID = e.CommandArgument.ToString();
                SanPhamDTO sp = SanPhamBUS.LayDSChiTietSanPhamID(ID);
                txtmasp.Text=sp.Masp_id;
                txtsoluong.Text = sp.SoLuongTonKho;
                txtsize.Text = sp.Sizenumber;
                txtid.Text = sp.ID;
            }
        }
        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
                SanPhamDTO sp = SanPhamBUS.LayDSChiTietSanPhamID(txtid.Text);
                sp.Masp_id = txtmasp.Text;
                sp.SoLuongTonKho = txtsoluong.Text;
                sp.Sizenumber = txtsize.Text;
                if (SanPhamBUS.CapNhatCTSP(sp,txtid.Text))
                {
                    rptChiTietSanPham.DataSource = SanPhamBUS.LayDSChiTietSanPham(Request.QueryString["ID"]);
                    rptChiTietSanPham.DataBind();
                    Response.Write("<script>alert('Thêm mới sản phẩm thành công!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Thêm mới sản phẩm thất bại!')</script>");
                }
                
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            SanPhamDTO sp = new SanPhamDTO();
            sp.Masp_id = txtmasp.Text;
            sp.SoLuongTonKho = txtsoluong.Text;
            sp.Sizenumber = txtsize.Text;
            if(SanPhamBUS.ThemCTSP(sp))
            {
                rptChiTietSanPham.DataSource = SanPhamBUS.LayDSChiTietSanPham(Request.QueryString["ID"]);
                rptChiTietSanPham.DataBind();
                Response.Write("<script>alert('Thêm mới sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm mới sản phẩm thất bại!')</script>");
            }
           
        }
        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (SanPhamBUS.XoaCTSP(txtid.Text))
            {
                rptChiTietSanPham.DataSource = SanPhamBUS.LayDSChiTietSanPham(Request.QueryString["ID"]);
                rptChiTietSanPham.DataBind();
                Response.Write("<script>alert('Thêm mới sản phẩm thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm mới sản phẩm thất bại!')</script>");
            }
        }
    }
}