using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class SanPhamDAO
    {
        public static DataTable LayDSSanPham()
        {
            string query = "SELECT * FROM SanPham";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);
        }
        public static SanPhamDTO LaySanPhamTheoMaSp(string masp)
        {
            string query = "SELECT * FROM SanPham WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", masp);
            DataRow dr = DataProvider.ExecuteSelectQuery(query, param).Rows[0];
            SanPhamDTO sp = new SanPhamDTO();
            sp.MaSP = dr["MaSP"].ToString();
            sp.TenSP = dr["TenSP"].ToString();
            sp.ThongTin = dr["ThongTin"].ToString();
            sp.GiaTien = Convert.ToInt32(dr["GiaTien"]);
            sp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            sp.AnhMinhHoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return sp;

        }
        public static DataTable LaySanPhamTheoTheoSise(string masp)
        {
            string query = "select sizenumber from SanPham sp,SizeGiay sz where sz.masp_id=sp.MaSP and sp.MaSP=@masp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@masp", masp);
            return DataProvider.ExecuteSelectQuery(query, param);


        }
        public static bool CapNhatTonkho(string masp, int soluongconlai)
        {
            string query = "UPDATE SANPHAM SET SoLuongTonKho=@sltonkho where MaSP=@masp";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("masp", masp);
            param[1] = new SqlParameter("@sltonkho", soluongconlai);


            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static SanPhamDTO ConvertToDTO(DataRow dr)
        {
            SanPhamDTO sp = new SanPhamDTO();
            sp.MaSP = dr["MaSP"].ToString();
            sp.TenSP = dr["TenSP"].ToString();
            sp.ThongTin = dr["ThongTin"].ToString();
            sp.GiaTien = Convert.ToInt32(dr["GiaTien"]);
            sp.SoLuongTonKho = Convert.ToInt32(dr["SoLuongTonKho"]);
            sp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            sp.AnhMinhHoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return sp;
        }
    }
}
