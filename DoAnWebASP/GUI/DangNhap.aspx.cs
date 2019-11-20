using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string tenTK = txtTenTK.Text;
            string mk = txtMK.Text;

            if (TaiKhoanBUS.KTDangNhap(tenTK, mk))
            {
                HttpCookie cookie = new HttpCookie("TenTK");
                cookie.Value = tenTK;
                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại')</script>");
            }
        }
    }
}