using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
                txtTenTK.Enabled = true;
            }
        }
        protected void load()
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            string ten = cookie.Value;
            TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(ten);
            txtTenTK.Text = tk.TenTaiKhoan;
            txtMK.Text = tk.MatKhau;
            txtEmail.Text = tk.Email;
            txtSDT.Text = tk.Sdt;
            txtDiaChi.Text = tk.DiaChi;
            txtHoTen.Text = tk.HoTen;
            imgAnhMinhHoa.ImageUrl = "images/" + tk.AnhDaiDien;
        }
        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            string ten = cookie.Value;
            TaiKhoanDTO tk = new TaiKhoanDTO();
            TaiKhoanDTO tk2 = TaiKhoanBUS.LayThongTinTaiKhoan(ten);
            tk.TenTaiKhoan = txtTenTK.Text;
            tk.MatKhau = txtMK.Text;
            tk.Email = txtEmail.Text;
            tk.Sdt = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = false;
            tk.TrangThai=true;
            if (imgHinhSanPham.HasFile)
            {
                string sTenfile;
                sTenfile = imgHinhSanPham.FileName;
                imgHinhSanPham.SaveAs(MapPath("images/" + sTenfile));
                tk.AnhDaiDien = sTenfile.ToString();
            }
            else
            {
                tk.AnhDaiDien = tk2.AnhDaiDien;
            }
            if (TaiKhoanBUS.SuaTK(tk))
            {
                load();
                Response.Write("<script>alert('Cập nhật thành công')</script>");

            }
            else
            {
                Response.Write("<script>alert('Cập nhật thất bại')</script>");
            }
        }
    }
}