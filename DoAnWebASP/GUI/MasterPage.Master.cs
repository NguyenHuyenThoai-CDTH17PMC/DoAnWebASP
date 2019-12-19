using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtSearchBox.Attributes.Add("onkeypress", "return clickButton(event,'" + btnSearch.ClientID + "')");
            }  
           
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                lblLoiChao.Text = "Hello, " + cookie.Value;
                btnDangXuat.Visible = true;
                hplDangKy.Visible = false;
                hplDangNhap.Visible = false;
            }
            else
            {
                
                btnDangXuat.Visible = false;
            }
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect(Request.RawUrl);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearchBox.Text!="")
            {
                string tukhoa = txtSearchBox.Text;
                Response.Redirect("SanPham.aspx?Key=" + tukhoa);
            }
            else
            {
                Response.Write("<script>alert('Bạn chưa nhập gì!')</script>");
            }
        }
    }
}