using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif con = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("Select * From Tbl_Cesitler", con.baglanti());
            SqlDataReader read = komut.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
        }
    }
}