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
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptSanPham.DataSource = SanPhamBUS.LayDSSanPham();
                rptSanPham.DataBind();
            }
        }

        protected void rptSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ThemGH")
            {
                HttpCookie cookie = Request.Cookies["TenTK"];
                if (cookie != null)
                {
                    GioHangDTO gh = new GioHangDTO();
                    gh.TenTaiKhoan = cookie.Value;
                    gh.MaSP = e.CommandArgument.ToString();
                    gh.SoLuong = 1;

                    if (GioHangBUS.ThemGH(gh))
                    {
                        
                        Response.Redirect("GioHang.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Thêm thất bại')</script>");
                    }
                }
                else
                {
                    Response.Redirect("DangNhap.aspx");
                }
            }
        }
    }
}