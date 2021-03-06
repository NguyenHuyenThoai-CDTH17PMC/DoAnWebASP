﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAO
{
    public class GioHangDAO
    {
        public static bool KTGHTonTai(GioHangDTO gh)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP AND sizenumber=@SizeGiay";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SizeGiay", gh.SizeGiay);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemGH(GioHangDTO gh)
        {
            string query = "INSERT INTO GioHang (TenTaiKhoan, MaSP, SoLuong,sizenumber) VALUES (@TenTaiKhoan, @MaSP, @SoLuong,@SizeGiay)";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            param[3] = new SqlParameter("@SizeGiay", gh.SizeGiay);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaGH(GioHangDTO gh)
        {
            string query = "UPDATE GioHang SET SoLuong = SoLuong + @SoLuong WHERE sizenumber=@SizeGiay AND TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP ";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            param[3] = new SqlParameter("@SizeGiay ", gh.SizeGiay);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
       public static bool XoaGH(GioHangDTO gh)
        {
            string query = "DELETE  FROM GIOHANG WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP ";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
           
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }
        public static DataTable LayDSGioHang(string tenTK)
        {
            string query = "SELECT gh.MaSP, TenSP, AnhMinhHoa, GiaTien,gh.sizenumber, SoLuong, GiaTien * SoLuong AS ThanhTien FROM GioHang gh INNER JOIN SanPham SP ON gh.MaSP = SP.MaSP WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return DataProvider.ExecuteSelectQuery(query, param);
        }
    }
}
