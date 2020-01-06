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
        //new
        public static SanPhamDTO LayDSSanPhamCapNhat(string masp)
        {
            string query = "SELECT * FROM SanPham  WHERE MaSP=@ID";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", masp);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        public static DataTable LayDSChiTietSanPham(string masp)
        {
            string query = "SELECT * FROM SizeGiay WHERE masp_id=@ID ";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", masp);
            return DataProvider.ExecuteSelectQuery(query, param);
        }
        public static SanPhamDTO LayDSChiTietSanPhamID(string masp)
        {
            string query = "SELECT * FROM SizeGiay WHERE id=@ID";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", masp);
            return ConvertToDTOsize(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        public static bool ThemSp(SanPhamDTO sp)
        {
            string query = "INSERT INTO dbo.SanPham(MaSP,TenSP,ThongTin,GiaTien,MaLoaiSP,AnhMinhHoa,TrangThai) VALUES (@MaSP,@TenSP,@ThongTin,@GiaTien,@MaLoaiSP,@AnhMinhHoa,@TrangThai)";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@TenSP", sp.TenSP);
            param[1] = new SqlParameter("@ThongTin", sp.ThongTin);
            param[2] = new SqlParameter("@GiaTien", sp.GiaTien);
            param[3] = new SqlParameter("@MaLoaiSP", sp.MaLoaiSp);
            param[4] = new SqlParameter("@AnhMinhHoa", sp.AnhMinhHoa);
            param[5] = new SqlParameter("@TrangThai", sp.TrangThai);
            param[6] = new SqlParameter("@MaSP", sp.MaSP);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
        public static bool CapNhatSp(SanPhamDTO sp, string id)
        {
            string query = "UPDATE dbo.SanPham SET TenSP=@TenSP,ThongTin=@ThongTin,GiaTien=@GiaTien,MaLoaiSP=@MaLoaiSP,AnhMinhHoa=@AnhMinhHoa,TrangThai=@TrangThai WHERE MASP=@ID";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@TenSP", sp.TenSP);
            param[1] = new SqlParameter("@ThongTin", sp.ThongTin);
            param[2] = new SqlParameter("@GiaTien", sp.GiaTien);
            param[3] = new SqlParameter("@MaLoaiSP", sp.MaLoaiSp);
            param[4] = new SqlParameter("@AnhMinhHoa", sp.AnhMinhHoa);
            param[5] = new SqlParameter("@TrangThai", sp.TrangThai);
            param[6] = new SqlParameter("@ID", id);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static bool XoaSP(string id)
        {
            string query = "UPDATE dbo.SanPham SET TrangThai=0 WHERE MASP=@ID";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", id);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static bool ThemCTSP(SanPhamDTO sp)
        {
            string query = "INSERT INTO dbo.SizeGiay (Masp_id,SoLuongTonKho,Sizenumber) VALUES (@Masp_id,@SoLuongTonKho,@Sizenumber)";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@SoLuongTonKho", sp.SoLuongTonKho);
            param[1] = new SqlParameter("@Sizenumber", sp.Sizenumber);
            param[2] = new SqlParameter("@Masp_id", sp.Masp_id);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
        public static bool CapNhatCTSP(SanPhamDTO sp, string id)
        {
            string query = "UPDATE dbo.SizeGiay SET Masp_id=@Masp_id,SoLuongTonKho=@SoLuongTonKho,sizenumber=@Sizenumber WHERE id=@ID";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@SoLuongTonKho", sp.SoLuongTonKho);
            param[1] = new SqlParameter("@Sizenumber", sp.Sizenumber);
            param[2] = new SqlParameter("@Masp_id", sp.Masp_id);
            param[3] = new SqlParameter("@ID", id);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static bool XoaCTSP(string masp)
        {
            string query = "DELETE FROM SizeGiay WHERE ID=@ID";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", masp);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }
        //endnew
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
        public static List<SanPhamDTO> LaySanPhamCungLoaiTrongTrangChiTiet(string maloaisp)
        {
            string query = "select*from sanpham sp,loaisanpham lsp where sp.MaLoaiSP=lsp.MaLoaiSP and  lsp.maloaisp=@maloaisp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@maloaisp", maloaisp);
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            List<SanPhamDTO> list = new List<SanPhamDTO>();
            foreach (DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        public static SizeGiayDTO ConvertToDTOSizeGiayDTO(DataRow dr)
        {
            SizeGiayDTO sz = new SizeGiayDTO();
            sz.Sizenumber = dr["sizenumber"].ToString();
            sz.Soluongtonkho = Convert.ToInt32(dr["SoLuongTonKho"]);
            return sz;
        }
        public static SanPhamDTO ConvertToDTOsize(DataRow dr)
        {
            SanPhamDTO sp = new SanPhamDTO();
            sp.ID = dr["id"].ToString();
            sp.Masp_id = dr["masp_id"].ToString();
            sp.Sizenumber = dr["sizenumber"].ToString();
            sp.SoLuongTonKho = dr["SoLuongTonKho"].ToString();
            return sp;
        }
        //Chức năng Tìm kiếm
        public static List<SanPhamDTO> XemGiayTheoTenLoai(string tenloaisp)
        {
            string query = "select*from sanpham sp,loaisanpham lsp where sp.MaLoaiSP=lsp.MaLoaiSP and  lsp.TenLoaiSP=@tenloaisp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@tenloaisp", tenloaisp);
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            List<SanPhamDTO>list=new List<SanPhamDTO>();
            foreach(DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        public static List<SanPhamDTO> XemGiayTheoSize(string sizenumber)
        {
            string query = "select sp.MaSP,sp.TenSP,sp.ThongTin,sp.GiaTien,sp.MaLoaiSP,sp.AnhMinhHoa,sp.TrangThai from SanPham sp,SizeGiay sz where sp.masp=sz.masp_id and sz.sizenumber=@sizenumber";
            SqlParameter[]param=new SqlParameter[1];
            param[0]=new SqlParameter("@sizenumber",sizenumber);
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            List<SanPhamDTO>list=new List<SanPhamDTO>();
            foreach (DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        public static List<SanPhamDTO> XemTheoGiaTuThapDenCao()
        {
            string query = "select*from sanpham ORDER BY giatien ASC";
            SqlParameter[] param = new SqlParameter[0];
            List<SanPhamDTO> list = new List<SanPhamDTO>();
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            foreach(DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        public static List<SanPhamDTO> XemTheoGiaTuCaoDenThap()
        {
            string query = "select*from sanpham ORDER BY giatien DESC";
            SqlParameter[] param = new SqlParameter[0];
            List<SanPhamDTO> list = new List<SanPhamDTO>();
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            foreach (DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        public static List<SanPhamDTO> TimKiemNguoiDungNhap(string tukhoa)
        {
            string query = "select*from sanpham where tensp LIKE '%" +tukhoa+ "%'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable tbketqua = DataProvider.ExecuteSelectQuery(query, param);
            List<SanPhamDTO> list = new List<SanPhamDTO>();
            foreach (DataRow dr in tbketqua.Rows)
            {
                list.Add(ConvertToDTO(dr));
            }
            return list;
        }
        
    }
}
