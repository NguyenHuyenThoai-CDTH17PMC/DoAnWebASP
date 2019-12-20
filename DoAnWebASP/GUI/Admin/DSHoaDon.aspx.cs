using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
               

                
            }
        }
        public void load()
        {
            rptHoaDon.DataSource = HoaDonBUS.LayDSHoaDon();
            rptHoaDon.DataBind();
           

        }
        protected void rptHoaDon_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
                if (e.CommandName == "ChonHD")
                {
                    String id = e.CommandArgument.ToString();
                    if(HoaDonBUS.UpdateTrangThai(id))
                    {
                       
                        load();
                    }
                }
           
        }
        
    }
}