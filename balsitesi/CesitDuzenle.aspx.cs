using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class CesitAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        string log = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
                id = Request.QueryString["Cesitid"];

                            if (Page.IsPostBack == false)
                            {

                                SqlCommand komut = new SqlCommand("select * from tbl_Cesitler where cesitid=@p1", bgl.baglanti());
                                komut.Parameters.AddWithValue("@p1", id);
                                SqlDataReader dr = komut.ExecuteReader();
                                while (dr.Read())
                                {
                                    TextBox1.Text = dr[1].ToString();
                                    TextBox2.Text = dr[2].ToString();
                                }
                                bgl.baglanti().Close();
                            }
            

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Cesitler SET CesitAd=@p1 , CesitAciklama=@p2 where cesitid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}