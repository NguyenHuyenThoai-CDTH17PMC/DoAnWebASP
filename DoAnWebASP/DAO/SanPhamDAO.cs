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
        public static List<SizeGiayDTO> LaySanPhamTheoTheoSise(string masp)
        {
            string query = "select sizenumber,SoLuongTonKho from SanPham sp,SizeGiay sz where sz.masp_id=sp.MaSP and sp.MaSP=@masp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@masp", masp);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SizeGiayDTO> lstSizeGiay = new List<SizeGiayDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSizeGiay.Add(ConvertToDTOSizeGiayDTO(dr));
            }
            return lstSizeGiay;


        }
        public static bool CapNhatTonkho(string masp,string SizeGiay, int soluongdamua)
        {
            string query = "UPDATE SizeGiay SET SoLuongTonKho=SoLuongTonKho - @sltonkho where masp_id=@masp and sizenumber=@sizenumber";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@masp", masp);
            param[1] = new SqlParameter("@sizenumber",SizeGiay);
            param[2] = new SqlParameter("@sltonkho", soluongdamua);

            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static SanPhamDTO ConvertToDTO(DataRow dr)
        {
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
        public static SizeGiayDTO ConvertToDTOSizeGiayDTO(DataRow dr)
        {
            SizeGiayDTO sz = new SizeGiayDTO();
            sz.Sizenumber = dr["sizenumber"].ToString();
            sz.Soluongtonkho = Convert.ToInt32(dr["SoLuongTonKho"]);
            return sz;
        }
    }
}
