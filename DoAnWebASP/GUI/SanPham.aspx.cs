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
                if (Request.QueryString["TenLoai"] != null)
                {
                    rptSanPham.DataSource = SanPhamBUS.XemGiayTheoTenLoai(Request.QueryString["TenLoai"]);
                    rptSanPham.DataBind();
                }
                else if (Request.QueryString["Size"] != null)
                {
                    rptSanPham.DataSource = SanPhamBUS.XemGiayTheoSize(Request.QueryString["Size"]);
                    rptSanPham.DataBind();
                }
                else if (Request.QueryString["Sort"] == "LOW_TO_HIGH")
                {
                    rptSanPham.DataSource = SanPhamBUS.XemTheoGiaTuThapDenCao();
                    rptSanPham.DataBind();
                }
                else if (Request.QueryString["Sort"] == "HIGH_TO_LOW")
                {
                    rptSanPham.DataSource = SanPhamBUS.XemTheoGiaTuCaoDenThap();
                    rptSanPham.DataBind();
                }
                else if (Request.QueryString["Key"] !=null)
                {
                    rptSanPham.DataSource = SanPhamBUS.TimKiemNguoiDungNhap(Request.QueryString["Key"]);
                    rptSanPham.DataBind();
                }
                else
                {
                    rptSanPham.DataSource = SanPhamBUS.LayDSSanPham();
                    rptSanPham.DataBind();
                }
                rpt_LoaiGiay.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
                rpt_LoaiGiay.DataBind();

                rpt_SizeGiay.DataSource = SizeGiayBUS.LayDSSize();
                rpt_SizeGiay.DataBind();
                
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

        protected void rpt_LoaiGiay_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "XemGiayTheoTenLoai")
            {
                string tenloaisp = e.CommandArgument.ToString();
                List<SanPhamDTO> list = SanPhamBUS.XemGiayTheoTenLoai(tenloaisp);
                if (list != null)
                {
                    Response.Redirect("SanPham.aspx?TenLoai=" + tenloaisp);
                }
                else
                {
                    Response.Write("XEM KHÔNG ĐƯỢC");
                }
            }
        }

        protected void rpt_SizeGiay_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "XemGiayTheoSize")
            {
                string sizenumber = e.CommandArgument.ToString();
                List<SanPhamDTO> list = SanPhamBUS.XemGiayTheoSize(sizenumber);
                if (list != null)
                {
                    Response.Redirect("SanPham.aspx?Size=" + sizenumber);
                }
                else
                {
                    Response.Write("XEM KHÔNG ĐƯỢC");
                }
            }
        }
    }
}