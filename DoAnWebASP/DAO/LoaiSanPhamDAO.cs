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
            string query = "SELECT * FROM LoaiSanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<LoaiSanPhamDTO> lstLoaiSanPham = new List<LoaiSanPhamDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstLoaiSanPham.Add(ConvertToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        //new
        public static LoaiSanPhamDTO LayDSLoaiSanPhamID(string id)
        {
            string query = "SELECT * FROM LoaiSanPham WHERE MaLoaiSP=@ID";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", id);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        public static bool ThemLoaiSp(LoaiSanPhamDTO lsp)
        {
            string query = "INSERT INTO dbo.LoaiSanPham (TenLoaiSP) VALUES (@TenLoaiSP)";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenLoaiSP", lsp.TenLoaiSP);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
        public static bool CapNhatLSP(LoaiSanPhamDTO lsp, string id)
        {
            string query = "UPDATE dbo.LoaiSanPham SET TenLoaiSP=@TenLoaiSP WHERE MaLoaiSP=@ID";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenLoaiSP", lsp.TenLoaiSP);
            param[1] = new SqlParameter("@ID", id);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static bool XoaLSP(string id)
        {
            string query = "UPDATE dbo.LoaiSanPham SET TrangThai=0 WHERE MaLoaiSP=@ID ";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@ID", id);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static LoaiSanPhamDTO ConvertToDTO(DataRow dr)
        {
            LoaiSanPhamDTO lsp = new LoaiSanPhamDTO();
            lsp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            lsp.TenLoaiSP = dr["TenLoaiSP"].ToString();
            return lsp;
        }

        //endnew
    }
}
