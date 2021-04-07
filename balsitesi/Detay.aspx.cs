using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class Detay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string Balid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Balid = Request.QueryString["Balid"];


            SqlCommand komut = new SqlCommand("Select * From Tbl_Bal where Balid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Balid);
            SqlDataReader read = komut.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();

        } 
    }
}