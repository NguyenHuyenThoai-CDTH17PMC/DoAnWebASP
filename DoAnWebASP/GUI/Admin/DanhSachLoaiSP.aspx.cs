using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI.Admin
{
    public partial class DanhSachLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptSanPham.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
                rptSanPham.DataBind();
            }
        }
    }
}