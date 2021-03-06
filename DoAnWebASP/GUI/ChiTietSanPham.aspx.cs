﻿using System;
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
                lblMaSP.Visible = false;
               

                DropDownList_size.DataSource = SanPhamBUS.LaySanPhamTheoTheoSise(Request.QueryString["qqq"]);
                DropDownList_size.DataTextField = "sizenumber";
                DropDownList_size.DataValueField = "SoLuongTonKho";
                DropDownList_size.DataBind();

                lblSLTK.Text = DropDownList_size.Items[0].Value.ToString();

                rpt_LoaiGiay.DataSource = LoaiSanPhamBUS.LayDSLoaiSanPham();
                rpt_LoaiGiay.DataBind();

                rpt_SizeGiay.DataSource = SizeGiayBUS.LayDSSize();
                rpt_SizeGiay.DataBind();

                rpt_spcungloai.DataSource = SanPhamBUS.LaySanPhamCungLoaiTrongTrangChiTiet(sp.MaLoaiSP);
                rpt_spcungloai.DataBind();

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


                if (gh.SoLuong >Convert.ToInt32(lblSLTK.Text))
                {
                    Response.Write("<script>alert('Thêm thất bại')</script>");
                }

                else if (GioHangBUS.ThemGH(gh))
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

        protected void rpt_LoaiGiay_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
          if (e.CommandName == "XemGiayTheoTenLoai")
          {
              string tenloaisp = e.CommandArgument.ToString();
              List<SanPhamDTO> list = SanPhamBUS.XemGiayTheoTenLoai(tenloaisp);
              if(list!=null)
              {
                  Response.Redirect("SanPham.aspx?TenLoai=" +tenloaisp);
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

        protected void DropDownList_size_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblSLTK.Text = DropDownList_size.SelectedValue;
        }

        protected void btnADD_Click1(object sender, EventArgs e)
        {

        }

       
    }
}