using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
     public class CTHoaDonBUS
    {
        public static bool ThemCTHD(CTHoaDonDTO cthd)
        {
            return CTHoaDonDAO.ThemCTHD(cthd);
        }
    }
}
