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
    public class SanPhamDAO
    {
        public static DataTable LayDSSanPham()
        {
            string query = "SELECT * FROM SanPham";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);
        }
    }
}
