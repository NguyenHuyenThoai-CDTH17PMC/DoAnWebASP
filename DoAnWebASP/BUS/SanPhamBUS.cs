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
        public static DataTable LaySanPhamTheoTheoSise(string masp)
        {

            return SanPhamDAO.LaySanPhamTheoTheoSise(masp);
        }
        public static bool CapNhatSoLuongTonKho(string masp, int soluongconlai)
        {
            if (SanPhamDAO.CapNhatTonkho(masp, soluongconlai))
            {
                return SanPhamDAO.CapNhatTonkho(masp, soluongconlai);
            }
            {
                return false;
            }
        }
    }
}
