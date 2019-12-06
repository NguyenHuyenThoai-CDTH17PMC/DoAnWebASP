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
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SanPhamDTO sp = SanPhamBUS.LaySanPhamTheoMaSp(Request.QueryString["qqq"]);
                lblTenSP.Text = sp.TenSP;
                imgAnhMinhHoa.ImageUrl = "images/" + sp.AnhMinhHoa;
                lblThongTin.Text = sp.ThongTin;
                lblMaSP.Text = sp.MaSP;
                lblGia.Text = sp.GiaTien.ToString();
                txtSLTK.Text = sp.SoLuongTonKho.ToString();

                DropDownList_size.DataSource = SanPhamBUS.LaySanPhamTheoTheoSise(Request.QueryString["qqq"]);
                DropDownList_size.DataTextField = "sizenumber";
                DropDownList_size.DataValueField = "sizenumber";
                DropDownList_size.DataBind();

                rpt_LoaiGiay.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
                rpt_LoaiGiay.DataBind();

                rpt_SizeGiay.DataSource = SizeGiayBUS.LayDSSize();
                rpt_SizeGiay.DataBind();

            }

        }

        protected void btnADD_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {

                GioHangDTO gh = new GioHangDTO();
                gh.TenTaiKhoan = cookie.Value;
                gh.MaSP = lblMaSP.Text;
                gh.SizeGiay = DropDownList_size.SelectedItem.Text;
                gh.SoLuong = Convert.ToInt32(txtSoluong.Text);

                int soluongtonkho = Convert.ToInt32(txtSLTK.Text);

                if (gh.SoLuong > soluongtonkho)
                {
                    Response.Write("<script>alert('Thêm thất bại')</script>");
                }

                else if (GioHangBUS.ThemGH(gh))
                {

                    SanPhamBUS.CapNhatSoLuongTonKho(gh.MaSP, soluongtonkho - gh.SoLuong);
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

        protected void rpt_LoaiGiay_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rpt_SizeGiay_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}