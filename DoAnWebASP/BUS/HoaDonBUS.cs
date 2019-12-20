﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using DTO;


namespace BUS
{
     public class HoaDonBUS
    {
         public static DataTable LayDSHoaDon()
         {
             return HoaDonDAO.LayDSHoaDon();
         }
         public static bool UpdateTrangThai(string id)
         {
             return HoaDonDAO.UpdateTrangThai(id);
         }
        public static string ThemHD(HoaDonDTO hd)
        {
            try
            {
                hd.MaHD = (Convert.ToInt32(HoaDonDAO.LayMaHDLonNhat()) + 1).ToString("000");
            }
            catch (FormatException e)
            {
                hd.MaHD = "001";
            }
            if (HoaDonDAO.ThemHD(hd))
            {
                return hd.MaHD;
            }
            else
            {
                return null;
            }
        }
    }
}
