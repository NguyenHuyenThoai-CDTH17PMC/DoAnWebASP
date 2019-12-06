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
                return SanPhamDAO.CapNhatTonkho(masp, SizeGiay, soluongdamua);
            }
            {
                return false;
            }
        }
    }
}
