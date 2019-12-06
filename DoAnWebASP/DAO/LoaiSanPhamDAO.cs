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
    public class LoaiSanPhamDAO
    {
        public static List<LoaiSanPhamDTO> LayDSLoaiSanPham()
        {
            string query = "SELECT TenLoaiSP FROM LoaiSanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<LoaiSanPhamDTO> lstLoaiSanPham = new List<LoaiSanPhamDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstLoaiSanPham.Add(ConvertToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        public static LoaiSanPhamDTO ConvertToDTO(DataRow dr)
        {
            LoaiSanPhamDTO lsp = new LoaiSanPhamDTO();
            lsp.TenLoaiSP = dr["TenLoaiSP"].ToString(); 
            return lsp;
        }
    }
}
