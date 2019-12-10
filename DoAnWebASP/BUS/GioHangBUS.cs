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
        public static int TinhTongTienGH(string tenTK)
        {
            DataTable dtbKetQua = GioHangDAO.LayDSGioHang(tenTK);
            int tongTien = 0;
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                tongTien += Convert.ToInt32(dr["ThanhTien"]);
            }
            return tongTien;
        }
        public static bool XoaGH(GioHangDTO gh)
        {

            return GioHangDAO.XoaGH(gh);       
        }
        
    }
}
