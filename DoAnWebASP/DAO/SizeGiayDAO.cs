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
    public class SizeGiayDAO
    {
        public static List<SizeGiayDTO> LayDSSize()
        {
            string query = "SELECT DISTINCT sizenumber FROM SizeGiay";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SizeGiayDTO> lstSizeGiay = new List<SizeGiayDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSizeGiay.Add(ConvertToDTO(dr));
            }
            return lstSizeGiay;
        }
        public static SizeGiayDTO ConvertToDTO(DataRow dr)
        {
            SizeGiayDTO sg = new SizeGiayDTO();
            sg.Sizenumber= dr["sizenumber"].ToString();   
            return sg;
        }
    }
}
