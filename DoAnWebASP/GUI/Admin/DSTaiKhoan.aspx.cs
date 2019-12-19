using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI.Admin
{
    public partial class DSTaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
            }
        }
        public void load()
        {
            rpttaikhoan.DataSource = TaiKhoanBUS.LayDSTaiKhoan();
            rpttaikhoan.DataBind();
            DropDownList1.AutoPostBack = true;
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            string sTenfile;
            sTenfile = imgHinhSanPham.FileName;
            imgHinhSanPham.SaveAs(MapPath("../images/" + sTenfile));
            TaiKhoanDTO tk = new TaiKhoanDTO();
            tk.TenTaiKhoan = txtTenTK.Text;
            tk.MatKhau = txtMK.Text;
            tk.Email = txtEmail.Text;
            tk.Sdt = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = true;
            tk.AnhDaiDien = sTenfile.ToString();
            if (TaiKhoanBUS.ThemTK(tk))
            {
                Response.Write("<script>alert('Đăng kí thành công')</script>");

            }
            else
            {
                Response.Write("<script>alert('Tên tài khoản đã có người sử dụng. Đăng kí thất bại')</script>");
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            TaiKhoanDTO tk = new TaiKhoanDTO();
            TaiKhoanDTO tk2 = TaiKhoanBUS.LayThongTinTaiKhoan(txtTenTK.Text);
            tk.TenTaiKhoan = txtTenTK.Text;
            tk.MatKhau = txtMK.Text;
            tk.Email = txtEmail.Text;
            tk.Sdt = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;
            if (DropDownList2.SelectedValue == "true")
            {
                tk.LaAdmin = true;
            }
            if (DropDownList2.SelectedValue != "true")
            {
                tk.LaAdmin = false;
            }
            if (imgHinhSanPham.HasFile)
            {
                string sTenfile;
                sTenfile = imgHinhSanPham.FileName;
                imgHinhSanPham.SaveAs(MapPath("../images/" + sTenfile));
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
                Response.Write("<script>alert('Tên tài khoản đã có người sử dụng.Cập nhật thất bại')</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if ( TaiKhoanBUS.XoaTK(txtTenTK.Text))
            {
                load();
                Response.Write("<script>alert('Xóa thành công')</script>");

            }
            else
            {
                Response.Write("<script>alert('Xóa thất bại')</script>");
            }
           
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string caigido = DropDownList1.SelectedValue;
            if (caigido == "1" || caigido=="0")
            {
                rpttaikhoan.DataSource = TaiKhoanBUS.LayDSSanPham(caigido);
                rpttaikhoan.DataBind();
            }
            else if (caigido == "tatca")
            {
                load();
            }
        }

        protected void rpttaikhoan_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string tentk = e.CommandArgument.ToString();
                TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tentk);
                txtTenTK.Text = tk.TenTaiKhoan;
                txtMK.Text = tk.MatKhau;
                txtEmail.Text=  tk.Email;
                txtSDT.Text=tk.Sdt;
                txtDiaChi.Text = tk.DiaChi;
                txtHoTen.Text =  tk.HoTen;
                imgAnhMinhHoa.ImageUrl = "../images/" + tk.AnhDaiDien;
                DropDownList2.SelectedValue = tk.LaAdmin.ToString();
                txtTenTK.Enabled = false;
                if (tk.LaAdmin != true)
                {
                    btnCapNhat.Enabled = false;
                    
                }
                if(tk.LaAdmin == true)
                {
                    btnCapNhat.Enabled = true;
                }
            }
        }
    }
}