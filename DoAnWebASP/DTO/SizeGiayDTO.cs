using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SizeGiayDTO
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string sizenumber;

        public string Sizenumber
        {
            get { return sizenumber; }
            set { sizenumber = value; }
        }
        private string masp_id;

        public string Masp_id
        {
            get { return masp_id; }
            set { masp_id = value; }
        }
        private int soluongtonkho;

        public int Soluongtonkho
        {
            get { return soluongtonkho; }
            set { soluongtonkho = value; }
        }
    }
}
