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
     }
}
