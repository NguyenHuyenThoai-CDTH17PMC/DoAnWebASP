using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace BUS
{
     public class LoaiSanPhamBUS
     {
         public static List<LoaiSanPhamDTO> LayDSLoaiSanPham()
         {
             return LoaiSanPhamDAO.LayDSLoaiSanPham();
         }

         public static LoaiSanPhamDTO LayDSLoaiSanPhamID(string id)
         {
             return LoaiSanPhamDAO.LayDSLoaiSanPhamID(id);
         }
         public static bool ThemLoaiSp(LoaiSanPhamDTO lsp)
         {
             return LoaiSanPhamDAO.ThemLoaiSp(lsp);
         }
         public static bool CapNhatLSP(LoaiSanPhamDTO lsp, string id)
         {
             return LoaiSanPhamDAO.CapNhatLSP(lsp, id);
         }
         public static bool XoaLSP(string id)
         {
             return LoaiSanPhamDAO.XoaLSP(id);
         }
     }
}
