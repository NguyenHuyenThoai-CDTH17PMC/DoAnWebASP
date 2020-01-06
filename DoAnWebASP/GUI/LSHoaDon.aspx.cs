using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BUS;


namespace GUI
{
    public partial class LSHoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                if (!Page.IsPostBack)
                {
                    DataTable dtbKetQua = HoaDonBUS.LayLSHoaDon(tenTK);
                    rptLSHoaDon.DataSource = dtbKetQua;
                    rptLSHoaDon.DataBind();
                   lblTongTien.Text = HoaDonBUS.TinhTongTienHD(tenTK).ToString();

                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
    }
}