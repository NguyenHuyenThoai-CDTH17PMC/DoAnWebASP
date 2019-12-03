using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
                    DataTable dtbKetQua = GioHangBUS.LayDSGioHang(tenTK);
                    rptGioHang.DataSource = dtbKetQua;
                     rptGioHang.DataBind();
                    lblTongTien.Text = GioHangBUS.TinhTongTienGH(tenTK).ToString();
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

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                HoaDonDTO hd = new HoaDonDTO();
                //GioHangDTO gh = new GioHangDTO();
                hd.TenTaiKhoan = tenTK;
                hd.NgayMua = DateTime.Now;
                hd.DiaChiGiaoHang = "Tp.HCM";
                hd.SDTGiaoHang = "0905939947";
                hd.TongTien = GioHangBUS.TinhTongTienGH(tenTK);
                hd.MaHD = HoaDonBUS.ThemHD(hd);
                DataTable dtbKetQua = GioHangBUS.LayDSGioHang(tenTK);
                foreach (DataRow dr in dtbKetQua.Rows)
                {
                    CTHoaDonDTO cthd = new CTHoaDonDTO();
                    cthd.MaHD = hd.MaHD;
                    cthd.MaSP = dr["MaSP"].ToString();
                    cthd.SoLuong = Convert.ToInt32(dr["SoLuong"]);
                    cthd.DonGia = Convert.ToInt32(dr["GiaTien"]);
                    CTHoaDonBUS.ThemCTHD(cthd);
                }
               // GioHangBUS.XoaGH(gh);
            }
        }
    }
}