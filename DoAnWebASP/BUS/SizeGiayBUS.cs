using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAO;
using DTO;


namespace BUS
{
    public class SizeGiayBUS
    {
        public static List<SizeGiayDTO> LayDSSize()
        {
            return SizeGiayDAO.LayDSSize();
        }
      
    }
}
