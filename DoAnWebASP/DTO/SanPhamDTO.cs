using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SanPhamDTO
    {
        public string MaSP { get; set; }
        public string TenSP { get; set; }
        public string ThongTin { get; set; }
        public int GiaTien { get; set; }
        public int SoLuongTonKho { get; set; }
        public string MaLoaiSP { get; set; }
        public string AnhMinhHoa { get; set; }
        public bool TrangThai { get; set; }

        public SanPhamDTO()
        {
            GiaTien = 0;
            SoLuongTonKho = 0;
            TrangThai = true;
        }
    }
}
