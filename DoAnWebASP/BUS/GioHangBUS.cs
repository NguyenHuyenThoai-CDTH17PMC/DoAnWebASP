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
    public class GioHangBUS
    {
        public static bool ThemGH(GioHangDTO gh)
        {
            if (GioHangDAO.KTGHTonTai(gh))
            {
                return GioHangDAO.SuaGH(gh);
            }
            else
            {
                return GioHangDAO.ThemGH(gh);
            }
        }
        public static DataTable LayDSGioHang(string tenTk)
        {
            return GioHangDAO.LayDSGioHang(tenTk);
        }
        
    }
}
