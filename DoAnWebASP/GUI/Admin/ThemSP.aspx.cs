using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI.Admin
{
    public partial class ThemSP : System.Web.UI.Page
    {
        public string maloai;
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlSanPham.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
            ddlSanPham.DataTextField = "TenLoaiSP";
            ddlSanPham.DataValueField = "MaLoaiSP";
            ddlSanPham.DataBind();
        }
        protected void btnThemMoi_Click1(object sender, EventArgs e)
        {
            
          
        }

       

    }
}