using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace balsitesi
{
    public partial class BalDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        string log = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
                id = Request.QueryString["Balid"];

                if (Page.IsPostBack == false)
                {
                    SqlCommand komut3 = new SqlCommand("Select * from tbl_Bal where Balid=@p1", bgl.baglanti());
                    komut3.Parameters.AddWithValue("@p1", id);
                    SqlDataReader dr3 = komut3.ExecuteReader();
                    DataList1.DataSource = dr3;
                    DataList1.DataBind();

                    SqlCommand komut2 = new SqlCommand("Select * from tbl_Cesitler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "CesitAd";
                    DropDownList1.DataValueField = "Cesitid";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();

                    SqlCommand komut = new SqlCommand("select * from Tbl_Bal where Balid=@p1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", id);
                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
                        TextBox1.Text = dr[1].ToString();
                        TextBox2.Text = dr[2].ToString();
                        TextBox3.Text = dr[4].ToString();
                        DropDownList1.SelectedValue = dr[5].ToString();
                    }
                    bgl.baglanti().Close();
                
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            SqlCommand komut4 = new SqlCommand("Update Tbl_Bal SET BalAd=@p1 , BalOzellik=@p2 , BalResim=@p3 , BalFiyat=@p4 , Cesitid=@p5 where Balid=@p6", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut4.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut4.Parameters.AddWithValue("@p3","~/Resimler/" + FileUpload1.FileName);
            komut4.Parameters.AddWithValue("@p4",TextBox3.Text);
            komut4.Parameters.AddWithValue("@p5",DropDownList1.SelectedValue);
            komut4.Parameters.AddWithValue("@p6",id);
            komut4.ExecuteNonQuery();
           
            
            SqlCommand komut3 = new SqlCommand("Select * from tbl_Bal where Balid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr3 = komut3.ExecuteReader();
            DataList1.DataSource = dr3;
            DataList1.DataBind();
            bgl.baglanti().Close();
            }
            catch (Exception)
            {
                
                string script = "alert(\"RESİM DOSYASINI BOŞ BIRAKAMAZSINIZ!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            
        }
    }
}