using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SanPhamDTO
    {
        private string maSP;

        public string MaSP
        {
            get { return maSP; }
            set { maSP = value; }
        }
        private string tenSP;

        public string TenSP
        {
            get { return tenSP; }
            set { tenSP = value; }
        }
        private string thongTin;

        public string ThongTin
        {
            get { return thongTin; }
            set { thongTin = value; }
        }
        private int giaTien;

        public int GiaTien
        {
            get { return giaTien; }
            set { giaTien = value; }
        }
        private string maLoaiSP;

        public string MaLoaiSP
        {
            get { return maLoaiSP; }
            set { maLoaiSP = value; }
        }
        private string anhMinhHoa;

        public string AnhMinhHoa
        {
            get { return anhMinhHoa; }
            set { anhMinhHoa = value; }
        }
        private bool trangThai;

        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }

        private String maLoaiSp;

        public String MaLoaiSp
        {
            get { return maLoaiSp; }
            set { maLoaiSp = value; }
        }
        private String soLuongTonKho;

        public String SoLuongTonKho
        {
            get { return soLuongTonKho; }
            set { soLuongTonKho = value; }
        }
        private String sizenumber;

        public String Sizenumber
        {
            get { return sizenumber; }
            set { sizenumber = value; }
        }
        private String masp_id;

        public String Masp_id
        {
            get { return masp_id; }
            set { masp_id = value; }
        }
        private String iD;

        public String ID
        {
            get { return iD; }
            set { iD = value; }
        }
        public SanPhamDTO()
        {
            GiaTien = 0;
            TrangThai = true;
        }
    }
}
