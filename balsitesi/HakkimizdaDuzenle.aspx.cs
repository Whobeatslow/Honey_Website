using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class HakkimizdaDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        string log = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
                id = Request.QueryString["hakkimizdaid"];

                if (Page.IsPostBack == false)
                {

                    SqlCommand komut = new SqlCommand("select * from tbl_Hakkımızda where hakkimizdaid=@p1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", id);
                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                    }
                    bgl.baglanti().Close();
                }
            
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
        SqlCommand komut = new SqlCommand("Update tbl_hakkımızda set metin = @p1 where hakkimizdaid=@p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", id);
            komut.ExecuteNonQuery();
        }
    }
}