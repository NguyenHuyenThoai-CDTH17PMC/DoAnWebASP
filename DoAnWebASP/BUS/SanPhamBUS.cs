using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using DTO;

namespace BUS
{
    public class SanPhamBUS
    {
        public static DataTable LayDSSanPham()
        {
            return SanPhamDAO.LayDSSanPham();
        }
        public static SanPhamDTO LaySanPhamTheoMaSp(string masp)
        {
            return SanPhamDAO.LaySanPhamTheoMaSp(masp);
        }
        public static List<SizeGiayDTO> LaySanPhamTheoTheoSise(string masp)
        {

            return SanPhamDAO.LaySanPhamTheoTheoSise(masp);
        }
        public static bool CapNhatSoLuongTonKho(string masp, string SizeGiay, int soluongdamua)
        {
            if (SanPhamDAO.CapNhatTonkho(masp, SizeGiay, soluongdamua))
            {
                return true;
            }
            {
                return false;
            }
        }

        //new 
        public static DataTable LayDSChiTietSanPham(string sp)
        {
            return SanPhamDAO.LayDSChiTietSanPham(sp);
        }
        public static SanPhamDTO LayDSChiTietSanPhamID(string sp)
        {
            return SanPhamDAO.LayDSChiTietSanPhamID(sp);
        }
        public static SanPhamDTO LayDSSanPhamCapNhat(string sp)
        {
            return SanPhamDAO.LayDSSanPhamCapNhat(sp);
        }
        //End Lay danh sach
        //San Pham
        public static bool ThemSP(SanPhamDTO sp)
        {
            return SanPhamDAO.ThemSp(sp);
        }
        public static bool CapNhatSP(SanPhamDTO sp, string id)
        {
            return SanPhamDAO.CapNhatSp(sp, id);
        }
        public static bool XoaSP(string id)
        {
            return SanPhamDAO.XoaSP(id);
        }
        //End San Pham
        //Chi Tiet San Pham
        public static bool ThemCTSP(SanPhamDTO sp)
        {
            return SanPhamDAO.ThemCTSP(sp);
        }
        public static bool CapNhatCTSP(SanPhamDTO sp, string id)
        {
            return SanPhamDAO.CapNhatCTSP(sp, id);
        }
        public static bool XoaCTSP(string sp)
        {
            return SanPhamDAO.XoaCTSP(sp);
        }
        //End Chi Tiet San Pham
    }
}
