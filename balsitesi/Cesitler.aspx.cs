using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class Cesitler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string log = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            log = Request.QueryString["loginid"];
            if (log == "1")
            {
                if (Page.IsPostBack==false)
                {
                    id = Request.QueryString["Cesitid"];
                    islem = Request.QueryString["islem"];
                }
                SqlCommand komut = new SqlCommand("Select * from Tbl_Cesitler",bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                Panel2.Visible = false;
                Panel5.Visible = false;

                    if (islem=="sil")
                    {
                    SqlCommand komutsil = new SqlCommand("delete from Tbl_Cesitler where Cesitid=@p1", bgl.baglanti());
                        komutsil.Parameters.AddWithValue("@p1", id);
                    komutsil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    }

            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Cesitler (CesitAd,CesitAciklama) values (@p1,@p2)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}