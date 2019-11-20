using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!Page.IsPostBack)
            {
                rptGioHang.DataSource = GioHangBUS.LayDSGioHang(tenTk);
                rptGioHang.DataBind();
            }*/
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                if (!Page.IsPostBack)
                {
                    rptGioHang.DataSource = GioHangBUS.LayDSGioHang(tenTK);
                    rptGioHang.DataBind();
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }

        protected void btnXoaGH_Click(object sender, EventArgs e)
        {
           
        }
    }
}